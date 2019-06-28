Class {
	#name : #StCase,
	#superclass : #StStep,
	#instVars : [
		'selector',
		'testClass'
	],
	#category : #'SmallTest-Core'
}

{ #category : #'instance creation' }
StCase class >> onSelector: aTestSelector ofClass: aTestClass [
	^ self new
		initializeClass: aTestClass selector: aTestSelector;
		yourself
]

{ #category : #initialization }
StCase >> initializeClass: aTestClass selector: aTestSelector [
	self assert: aTestSelector isUnary.
	
	selector := aTestSelector.
	testClass := aTestClass
]

{ #category : #running }
StCase >> numberOfCases [
	^ 1
]

{ #category : #running }
StCase >> runDuring: testPlan [
	| result |
	testPlan reportCaseStarting: self.
	result := self runManaged.
	testPlan reportCaseEnded: self withResult: result
]

{ #category : #running }
StCase >> runManaged [
	^ [ [
			self setUpFixture.
			StPass with: self performTest.
		] ensure: [ self tearDownFixture ]
	] on: TestFailure , TestSkip , Error
		do: [ :ex | ex asStResult ]
]

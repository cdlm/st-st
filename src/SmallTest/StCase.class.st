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
StCase class >> onTestClass: aTestClass selector: aTestSelector [
	^ self new
		initializeClass: aTestClass selector: aTestSelector;
		yourself
]

{ #category : #initialization }
StCase >> initializeClass: aTestClass selector: aTestSelector [
	selector := aTestSelector.
	testClass := aTestClass
]

{ #category : #running }
StCase >> numberOfCases [
	^ 1
]

{ #category : #running }
StCase >> run [
	^ [ testClass new perform: selector.
		 StPass new ]
		on: TestFailure , TestSkip , Error
		do: [ :ex | ex asStResult ]
]

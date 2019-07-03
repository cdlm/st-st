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

{ #category : #'private - running' }
StCase >> performTestFor: testInstance [
	^ self selector value: testInstance
]

{ #category : #printing }
StCase >> printOn: aStream [
	aStream
		print: self testClass;
		nextPutAll: '>>';
		print: self selector
]

{ #category : #running }
StCase >> runDuring: testPlan [
	| result |
	testPlan reportCaseStarting: self.
	result := self runManaged.
	testPlan reportCaseEnded: self withResult: result.
	^ result
]

{ #category : #'private - running' }
StCase >> runManaged [
	^ [ self runUnmanaged ]
		on: TestFailure , TestSkip , Error
		do: [ :ex | 
			StCaseResult
				of: self
				outcome: ex
				severity: ex asStSeverity ]
]

{ #category : #'private - running' }
StCase >> runUnmanaged [
	|testInstance|
	testInstance := self testClass new.
	^ [ self setUpFixtureFor: testInstance.
		StCaseResult
			of: self
			outcome: (self performTestFor: testInstance)
			severity: StSeverity pass ]
		ensure: [ self tearDownFixtureFor: testInstance ]
]

{ #category : #accessing }
StCase >> selector [
	^ selector
]

{ #category : #'private - running' }
StCase >> setUpFixtureFor: testInstance [
	(self testClass canUnderstand: self setUpSelector)
		ifFalse: [ ^ self ].
		
	self setUpSelector value: testInstance
]

{ #category : #accessing }
StCase >> setUpSelector [
	^ #setUp
]

{ #category : #'private - running' }
StCase >> tearDownFixtureFor: testInstance [
	(self testClass canUnderstand: self tearDownSelector)
		ifFalse: [ ^ self ].
		
	self tearDownSelector value: testInstance
]

{ #category : #accessing }
StCase >> tearDownSelector [
	^ #tearDown
]

{ #category : #accessing }
StCase >> testClass [
	^ testClass
]

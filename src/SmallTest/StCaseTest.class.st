Class {
	#name : #StCaseTest,
	#superclass : #TestCase,
	#category : #'SmallTest-Tests'
}

{ #category : #tests }
StCaseTest >> testItCanError [
	| case result |
	case := StCase
		onSelector: #testThatImmediatelyErrors
		ofClass: StExampleTestOfSomething.
	result := case run.
	self assert: result severity isError.
	self assert: result outcome class equals: Error.
]

{ #category : #tests }
StCaseTest >> testItCanFail [
	| case result |
	case := StCase
		onSelector: #testThatImmediatelyFails
		ofClass: StExampleTestOfSomething.
	result := case run.
	self assert: result severity isFailure.
	self assert: result outcome class equals: TestFailure.
]

{ #category : #tests }
StCaseTest >> testItCanPass [
	| case result |
	case := StCase
		onSelector: #testJustSmoke
		ofClass: StExampleTestOfSomething.
	result := case run.
	self assert: result severity isPassed.
	self assert: result outcome class equals: StExampleTestOfSomething
]

{ #category : #tests }
StCaseTest >> testItCanSkip [
	| case result |
	case := StCase
		onSelector: #testSkipped
		ofClass: StExampleTestOfSomething.
	result := case run.
	self assert: result severity isSkipped.
	self assert: result outcome class equals: TestSkip
]

{ #category : #tests }
StCaseTest >> testNext [
	| case plan |
	case := StCase
		onSelector: #testJustSmoke
		ofClass: StExampleTestOfSomething.
	plan := StPlan on: case.
	self assert: plan numberOfCases equals: 1
]

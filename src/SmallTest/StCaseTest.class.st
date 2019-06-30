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
	self assert: result severity isError
]

{ #category : #tests }
StCaseTest >> testItCanFail [
	| case result |
	case := StCase
		onSelector: #testThatImmediatelyFails
		ofClass: StExampleTestOfSomething.
	result := case run.
	self assert: result severity isFailure
]

{ #category : #tests }
StCaseTest >> testItCanPass [
	| case result |
	case := StCase
		onSelector: #testJustSmoke
		ofClass: StExampleTestOfSomething.
	result := case run.
	self assert: result severity isPassed
]

{ #category : #tests }
StCaseTest >> testItCanSkip [
	| case result |
	case := StCase
		onSelector: #testSkipped
		ofClass: StExampleTestOfSomething.
	result := case run.
	self assert: result severity isSkipped
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

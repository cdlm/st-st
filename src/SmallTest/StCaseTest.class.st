Class {
	#name : #StCaseTest,
	#superclass : #TestCase,
	#category : #'SmallTest-Tests'
}

{ #category : #tests }
StCaseTest >> testItCanError [
	| case result |
	case := StCase
		onTestClass: StExampleTestOfSomething
		selector: #testThatImmediatelyErrors.
	result := case run.
	self assert: result isError
]

{ #category : #tests }
StCaseTest >> testItCanFail [
	| case result |
	case := StCase
		onTestClass: StExampleTestOfSomething
		selector: #testThatImmediatelyFails.
	result := case run.
	self assert: result isFailure
]

{ #category : #tests }
StCaseTest >> testItCanPass [
	| case result |
	case := StCase
		onTestClass: StExampleTestOfSomething
		selector: #testJustSmoke.
	result := case run.
	self assert: result isPassed
]

{ #category : #tests }
StCaseTest >> testItCanSkip [
	| case result |
	case := StCase
		onTestClass: StExampleTestOfSomething
		selector: #testSkipped.
	result := case run.
	self assert: result isSkipped
]

{ #category : #tests }
StCaseTest >> testNext [
	| case plan |
	case := StCase onTestClass: StExampleTestOfSomething selector: #testJustSmoke.
	plan := StPlan on: case.

	self
		assert: plan numberOfCases
		equals: 1
]

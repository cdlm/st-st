Class {
	#name : #StCaseTest,
	#superclass : #TestCase,
	#instVars : [
		'caseReportedAsStarting',
		'caseStartingTime',
		'caseReportedAsEnded',
		'caseEndedTime',
		'caseResult'
	],
	#category : #'SmallTest-Tests'
}

{ #category : #execution }
StCaseTest >> reportCaseEnded: aStCase withResult: aStCaseResult [
	caseReportedAsEnded := aStCase.
	caseEndedTime := DateAndTime now.
	caseResult := aStCaseResult
]

{ #category : #execution }
StCaseTest >> reportCaseStarting: aStCase [
	caseReportedAsStarting := aStCase.
	caseStartingTime := DateAndTime now
]

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

{ #category : #tests }
StCaseTest >> testRunDuring [
	| case result |
	case := StCase
		onSelector: #testJustSmoke
		ofClass: StExampleTestOfSomething.
	
	result := case runDuring: self.
	
	self assert: caseReportedAsStarting equals: case.
	self assert: caseReportedAsEnded equals: case.
	self assert: caseResult equals: result.
	self assert: caseStartingTime < caseEndedTime
]

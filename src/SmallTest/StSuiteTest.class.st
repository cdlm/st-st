Class {
	#name : #StSuiteTest,
	#superclass : #TestCase,
	#instVars : [
		'suiteReportedAsStarting',
		'suiteStartingTime',
		'suiteReportedAsEnded',
		'suiteEndedTime',
		'suiteResult'
	],
	#category : #'SmallTest-Tests'
}

{ #category : #execution }
StSuiteTest >> reportSuiteEnded: aStSuite withResult: aStSuiteResult [
	suiteReportedAsEnded := aStSuite.
	suiteEndedTime := DateAndTime now.
	suiteResult := aStSuiteResult
]

{ #category : #execution }
StSuiteTest >> reportSuiteStarting: aStSuite [
	suiteReportedAsStarting := aStSuite.
	suiteStartingTime := DateAndTime now
]

{ #category : #tests }
StSuiteTest >> testRun [
	| suite result |
	suite := StSuite new
					steps: { 
						StCase onSelector: #testThatSkips ofClass: StExampleTestOfSomething.
						StCase onSelector: #testJustSmoke ofClass: StExampleTestOfSomething.
						StCase onSelector: #testSkipped ofClass: StExampleTestOfSomething.
						StCase onSelector: #testThatImmediatelyErrors ofClass: StExampleTestOfSomething.
						StCase onSelector: #testThatImmediatelyFails ofClass: StExampleTestOfSomething
					};
					yourself.
					
	result := suite run.
	self assert: result class equals: StSuiteResult.
	self assert: result suite equals: suite.
	self assert: result stepResults size equals: 5.
	self assertCollection: (result stepResults collect: #case) hasSameElements: suite steps
]

{ #category : #tests }
StSuiteTest >> testRunDuring [
	| suite result |
	suite := StSuite new.
	
	result := suite runDuring: self.
	
	self assert: suiteReportedAsStarting equals: suite.
	self assert: suiteReportedAsEnded equals: suite.
	self assert: suiteResult equals: result.
	self assert: suiteStartingTime < suiteEndedTime
]

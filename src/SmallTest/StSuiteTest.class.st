Class {
	#name : #StSuiteTest,
	#superclass : #TestCase,
	#category : #'SmallTest-Tests'
}

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

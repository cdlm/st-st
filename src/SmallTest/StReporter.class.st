Class {
	#name : #StReporter,
	#superclass : #Object,
	#category : #'SmallTest-Core'
}

{ #category : #execution }
StReporter >> caseEnded: aTestCase withResult: testResult [
	"Default implementation, doing nothing."
]

{ #category : #execution }
StReporter >> caseStarting: aTestCase [
	"Default implementation, doing nothing."
]

{ #category : #execution }
StReporter >> planEnded: aTestPlan [
	"Default implementation, doing nothing."
]

{ #category : #execution }
StReporter >> planStarting: aTestPlan [
	"Default implementation, doing nothing."
]

{ #category : #execution }
StReporter >> suiteEnded: aStSuite withResult: aStSuiteResult [ 
	"Default implementation, doing nothing."
]

{ #category : #execution }
StReporter >> suiteStarting: aTestSuite [
	"Default implementation, doing nothing."
]

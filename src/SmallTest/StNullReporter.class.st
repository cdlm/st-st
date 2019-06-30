"
I am the implementation of the null-object design pattern for reporters.

Basically, I does nothing in reaction to all hooks.
"
Class {
	#name : #StNullReporter,
	#superclass : #StReporter,
	#category : #'SmallTest-Core'
}

{ #category : #execution }
StNullReporter >> caseEnded: aTestCase withResult: testResult [
	"Null object design pattern, does nothing on purpose."
]

{ #category : #execution }
StNullReporter >> caseStarting: aTestCase [
	"Null object design pattern, does nothing on purpose."
]

{ #category : #execution }
StNullReporter >> planEnded: aTestPlan [
	"Null object design pattern, does nothing on purpose."
]

{ #category : #execution }
StNullReporter >> planStarting: aTestPlan [
	"Null object design pattern, does nothing on purpose."
]

{ #category : #execution }
StNullReporter >> suiteEnded: aStSuite withResult: aStSuiteResult [ 
	"Null object design pattern, does nothing on purpose."
]

{ #category : #execution }
StNullReporter >> suiteStarting: aTestSuite [
	"Null object design pattern, does nothing on purpose."
]

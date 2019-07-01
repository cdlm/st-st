Class {
	#name : #StReporter,
	#superclass : #Object,
	#category : #'SmallTest-Core'
}

{ #category : #execution }
StReporter >> caseEnded: aTestCase withResult: testResult [
	"Hook called just after a test case execution ended.
	 The result of this test case execution is also provided.
	"
	self subclassResponsibility
]

{ #category : #execution }
StReporter >> caseStarting: aTestCase [
	"Hook called just before a test case execution starts."
	self subclassResponsibility
]

{ #category : #execution }
StReporter >> planEnded: aTestPlan [
	"Hook called just after a test plan execution ended."
	self subclassResponsibility
]

{ #category : #execution }
StReporter >> planStarting: aTestPlan [
	"Hook called just before a test plan execution starts."
	self subclassResponsibility
]

{ #category : #execution }
StReporter >> suiteEnded: aStSuite withResult: aStSuiteResult [ 
	"Hook called just after a test suite execution ended.
	 The result of this test suite execution is also provided.
	"
	self subclassResponsibility
]

{ #category : #execution }
StReporter >> suiteStarting: aTestSuite [
	"Hook called just before a test suite execution starts."
	self subclassResponsibility
]

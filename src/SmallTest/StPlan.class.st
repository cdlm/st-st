Class {
	#name : #StPlan,
	#superclass : #Object,
	#instVars : [
		'mainStep',
		'reporter'
	],
	#category : #'SmallTest-Core'
}

{ #category : #'instance creation' }
StPlan class >> on: aStep [
	^ self new
		mainStep: aStep;
		yourself
]

{ #category : #initialization }
StPlan >> initialize [
	super initialize.
	self reporter: StNullReporter new
]

{ #category : #accessing }
StPlan >> mainStep: aStep [ 
	mainStep := aStep
]

{ #category : #queries }
StPlan >> numberOfCases [
	^ mainStep numberOfCases
]

{ #category : #execution }
StPlan >> reportCaseEnded: aStCase withResult: aStCaseResult [
	self reporter caseEnded: aStCase withResult: aStCaseResult
]

{ #category : #execution }
StPlan >> reportCaseStarting: aStCase [ 
	self reporter caseStarting: aStCase
]

{ #category : #execution }
StPlan >> reportSuiteEnded: aStSuite withResult: aStSuiteResult [ 
	self reporter suiteEnded: aStSuite withResult: aStSuiteResult
]

{ #category : #execution }
StPlan >> reportSuiteStarting: aStSuite [ 
	self reporter suiteStarting: aStSuite
]

{ #category : #accessing }
StPlan >> reporter [
	^ reporter
]

{ #category : #accessing }
StPlan >> reporter: anObject [
	reporter := anObject
]

{ #category : #running }
StPlan >> run [
	| result |
	reporter planStarting: self.
	result := mainStep runDuring: self.
	reporter planEnded: self.
	^ result
]

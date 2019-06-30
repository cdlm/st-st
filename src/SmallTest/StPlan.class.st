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
StPlan >> reportCaseEnded: aStCase withResult: aStError [ 
	self reporter caseEnded: aStCase withResult: aStError
]

{ #category : #execution }
StPlan >> reportCaseStarting: aStCase [ 
	self reporter caseStarting: aStCase
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

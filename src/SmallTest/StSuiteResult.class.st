Class {
	#name : #StSuiteResult,
	#superclass : #StStepResult,
	#instVars : [
		'suite',
		'stepResults'
	],
	#category : #'SmallTest-Core'
}

{ #category : #'as yet unclassified' }
StSuiteResult class >> of: testSuite results: stepResults [
	^ self new
		initializeSuite: testSuite stepResults: stepResults;
		yourself
]

{ #category : #initialization }
StSuiteResult >> initializeSuite: anStSuite stepResults: aCollection [
	super initialize.
	suite := anStSuite.
	stepResults := aCollection
]

{ #category : #accessing }
StSuiteResult >> stepResults [
	^ stepResults
]

{ #category : #accessing }
StSuiteResult >> suite [
	^ suite
]

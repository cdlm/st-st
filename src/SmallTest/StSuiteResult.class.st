Class {
	#name : #StSuiteResult,
	#superclass : #StStepResult,
	#instVars : [
		'suite',
		'stepResults'
	],
	#category : #'SmallTest-Core'
}

{ #category : #accessing }
StSuiteResult >> stepResults [
	^ stepResults
]

{ #category : #accessing }
StSuiteResult >> stepResults: anObject [
	stepResults := anObject
]

{ #category : #accessing }
StSuiteResult >> suite [
	^ suite
]

{ #category : #accessing }
StSuiteResult >> suite: anObject [
	suite := anObject
]

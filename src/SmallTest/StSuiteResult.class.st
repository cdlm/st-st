Class {
	#name : #StSuiteResult,
	#superclass : #StResult,
	#instVars : [
		'suite'
	],
	#category : #'SmallTest-Core'
}

{ #category : #accessing }
StSuiteResult >> suite [
	^ suite
]

{ #category : #accessing }
StSuiteResult >> suite: anObject [
	suite := anObject
]

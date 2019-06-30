Class {
	#name : #StCaseResult,
	#superclass : #StStepResult,
	#instVars : [
		'severity',
		'case',
		'outcome'
	],
	#category : #'SmallTest-Core'
}

{ #category : #accessing }
StCaseResult >> case [
	^ case
]

{ #category : #accessing }
StCaseResult >> case: anObject [
	case := anObject
]

{ #category : #accessing }
StCaseResult >> outcome [
	^ outcome
]

{ #category : #accessing }
StCaseResult >> outcome: anObject [
	outcome := anObject
]

{ #category : #accessing }
StCaseResult >> severity [
	^ severity
]

{ #category : #accessing }
StCaseResult >> severity: anObject [
	severity := anObject
]

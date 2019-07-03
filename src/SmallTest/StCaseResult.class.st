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

{ #category : #'as yet unclassified' }
StCaseResult class >> of: testCase outcome: resultOrException severity: severity [
	^ self new
		initializeCase: testCase outcome: resultOrException severity: severity;
		yourself
]

{ #category : #accessing }
StCaseResult >> case [
	^ case
]

{ #category : #initialization }
StCaseResult >> initializeCase: anStCase outcome: anObject severity: anStSeverity [
	super initialize.
	case := anStCase.
	outcome := anObject.
	severity := anStSeverity
]

{ #category : #accessing }
StCaseResult >> outcome [
	^ outcome
]

{ #category : #printing }
StCaseResult >> printOn: aStream [
	aStream
		print: severity;
		nextPutAll: ': ';
		print: case
]

{ #category : #accessing }
StCaseResult >> severity [
	^ severity
]

Class {
	#name : #StPass,
	#superclass : #StSeverity,
	#category : #'SmallTest-Core'
}

{ #category : #merging }
StPass >> < other [
	^ other isFailure | other isError
]

{ #category : #testing }
StPass >> isPassed [
	^ true
]

{ #category : #printing }
StPass >> printOn: aStream [
	aStream nextPutAll: 'Passed'
]

Class {
	#name : #StError,
	#superclass : #StSeverity,
	#category : #'SmallTest-Core'
}

{ #category : #testing }
StError >> isError [
	^ true
]

{ #category : #printing }
StError >> printOn: aStream [
	aStream nextPutAll: 'Crashed'
]

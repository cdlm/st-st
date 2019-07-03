Class {
	#name : #StFail,
	#superclass : #StSeverity,
	#category : #'SmallTest-Core'
}

{ #category : #testing }
StFail >> isFailure [
	^ true
]

{ #category : #printing }
StFail >> printOn: aStream [
	aStream nextPutAll: 'Failed'
]

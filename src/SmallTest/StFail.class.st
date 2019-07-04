Class {
	#name : #StFail,
	#superclass : #StSeverity,
	#category : #'SmallTest-Core'
}

{ #category : #merging }
StFail >> < other [
	^ other isError
]

{ #category : #testing }
StFail >> isFailure [
	^ true
]

{ #category : #printing }
StFail >> printOn: aStream [
	aStream nextPutAll: 'Failed'
]

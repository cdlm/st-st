Class {
	#name : #StError,
	#superclass : #StSeverity,
	#category : #'SmallTest-Core'
}

{ #category : #merging }
StError >> < other [
	^ false
]

{ #category : #testing }
StError >> isError [
	^ true
]

{ #category : #printing }
StError >> printOn: aStream [
	aStream nextPutAll: 'Crashed'
]

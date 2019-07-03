Class {
	#name : #StPass,
	#superclass : #StSeverity,
	#category : #'SmallTest-Core'
}

{ #category : #testing }
StPass >> isPassed [
	^ true
]

{ #category : #printing }
StPass >> printOn: aStream [
	aStream nextPutAll: 'Passed'
]

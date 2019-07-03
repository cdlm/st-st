Class {
	#name : #StSkip,
	#superclass : #StSeverity,
	#category : #'SmallTest-Core'
}

{ #category : #testing }
StSkip >> isSkipped [
	^ true
]

{ #category : #printing }
StSkip >> printOn: aStream [
	aStream nextPutAll: 'Skipped'
]

Class {
	#name : #StSkip,
	#superclass : #StSeverity,
	#category : #'SmallTest-Core'
}

{ #category : #merging }
StSkip >> < other [
	^ other isSkipped not
]

{ #category : #testing }
StSkip >> isSkipped [
	^ true
]

{ #category : #printing }
StSkip >> printOn: aStream [
	aStream nextPutAll: 'Skipped'
]

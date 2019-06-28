Class {
	#name : #StSeverity,
	#superclass : #Object,
	#category : #'SmallTest-Core'
}

{ #category : #handling }
StSeverity class >> error [
	^ StError new
]

{ #category : #handling }
StSeverity class >> fail [
	^ StFail new
]

{ #category : #handling }
StSeverity class >> pass [
	^ StPass new
]

{ #category : #handling }
StSeverity class >> skip [
	^ StSkip new
]

{ #category : #testing }
StSeverity >> isError [
	^ false
]

{ #category : #testing }
StSeverity >> isFailure [
	^ false
]

{ #category : #testing }
StSeverity >> isPassed [
	^ false
]

{ #category : #testing }
StSeverity >> isSkipped [
	^ false
]

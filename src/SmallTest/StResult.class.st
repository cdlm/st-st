Class {
	#name : #StResult,
	#superclass : #Object,
	#instVars : [
		'case'
	],
	#category : #'SmallTest-Core'
}

{ #category : #testing }
StResult >> isError [
	^ false
]

{ #category : #testing }
StResult >> isFailure [
	^ false
]

{ #category : #testing }
StResult >> isPassed [
	^ false
]

{ #category : #testing }
StResult >> isSkipped [
	^ false
]

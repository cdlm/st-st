Class {
	#name : #StPlan,
	#superclass : #Object,
	#instVars : [
		'mainStep'
	],
	#category : #'SmallTest-Core'
}

{ #category : #'instance creation' }
StPlan class >> on: aStep [
	^ self new
		mainStep: aStep;
		yourself
]

{ #category : #accessing }
StPlan >> mainStep: aStep [ 
	mainStep := aStep
]

{ #category : #queries }
StPlan >> numberOfCases [
	^ mainStep numberOfCases
]

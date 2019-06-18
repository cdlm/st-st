Class {
	#name : #StSuite,
	#superclass : #StStep,
	#instVars : [
		'steps'
	],
	#category : #'SmallTest-Core'
}

{ #category : #running }
StSuite >> numberOfCases [
	^ steps
		inject: 0
		into: [ :each :number | number + each numberOfCases ]
]

Class {
	#name : #StStep,
	#superclass : #Object,
	#category : #'SmallTest-Core'
}

{ #category : #running }
StStep >> numberOfCases [
	^ self subclassResponsibility
]

{ #category : #running }
StStep >> run [
	^ self subclassResponsibility
]

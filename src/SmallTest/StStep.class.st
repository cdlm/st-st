Class {
	#name : #StStep,
	#superclass : #Object,
	#category : #'SmallTest-Core'
}

{ #category : #converting }
StStep >> asStStep [
	^ self
]

{ #category : #running }
StStep >> numberOfCases [
	^ self subclassResponsibility
]

{ #category : #running }
StStep >> run [
	"convenience"
	^ (StPlan on: self) run
]

{ #category : #running }
StStep >> runDuring: testPlan [
	self subclassResponsibility
]

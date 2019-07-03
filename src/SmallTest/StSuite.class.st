Class {
	#name : #StSuite,
	#superclass : #StStep,
	#instVars : [
		'steps'
	],
	#category : #'SmallTest-Core'
}

{ #category : #initialization }
StSuite >> initialize [
	super initialize.
	self steps: OrderedCollection new
]

{ #category : #running }
StSuite >> numberOfCases [
	^ steps
		inject: 0
		into: [ :each :number | number + each numberOfCases ]
]

{ #category : #running }
StSuite >> runDuring: testPlan [
	| result |
	testPlan reportSuiteStarting: self.
	result := self runStepsDuring: testPlan.
	testPlan reportSuiteEnded: self withResult: result.
	^ result
]

{ #category : #'private - running' }
StSuite >> runStepsDuring: testPlan [
	^ StSuiteResult
		of: self
		results: (self steps collect: [ :step | step runDuring: testPlan ])
]

{ #category : #accessing }
StSuite >> steps [
	^ steps
]

{ #category : #accessing }
StSuite >> steps: anObject [
	steps := anObject
]

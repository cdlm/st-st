Class {
	#name : #StSuite,
	#superclass : #StStep,
	#instVars : [
		'steps'
	],
	#category : #'SmallTest-Core'
}

{ #category : #'instance creation' }
StSuite class >> steps: aCollection [
	^ self new
		addSteps: aCollection;
		yourself
]

{ #category : #accessing }
StSuite >> addStep: aStep [
	steps add: aStep
]

{ #category : #accessing }
StSuite >> addSteps: aCollection [
	aCollection do: [ :each | self addStep: each ]
]

{ #category : #initialization }
StSuite >> initialize [
	super initialize.
	steps := OrderedCollection new
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

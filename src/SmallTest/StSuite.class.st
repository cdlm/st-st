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

{ #category : #running }
StSuite >> runDuring: testPlan [
	| result |
	testPlan reportSuiteStarting: self.
	result := self runStepsDuring: testPlan.
	testPlan reportSuiteEnded: self withResult: result.
	^ result
]

{ #category : #running }
StSuite >> runStepsDuring: testPlan [
	^ StSuiteResult new
		suite: self;
		stepResults: (self steps collect: [ :step |
			step runDuring: testPlan ]);
		yourself
]

{ #category : #accessing }
StSuite >> steps [
	^ steps
]

{ #category : #accessing }
StSuite >> steps: anObject [
	steps := anObject
]

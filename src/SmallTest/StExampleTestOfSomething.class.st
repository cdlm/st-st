Class {
	#name : #StExampleTestOfSomething,
	#superclass : #Object,
	#category : #'SmallTest-Fixtures'
}

{ #category : #tests }
StExampleTestOfSomething >> testJustSmoke [
	"do nothing"
]

{ #category : #tests }
StExampleTestOfSomething >> testThatImmediatelyErrors [
	Error signal
]

{ #category : #tests }
StExampleTestOfSomething >> testThatImmediatelyFails [
	TestFailure signal
]

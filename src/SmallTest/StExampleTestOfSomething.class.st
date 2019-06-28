Class {
	#name : #StExampleTestOfSomething,
	#superclass : #Object,
	#category : #'SmallTest-Fixtures'
}

{ #category : #tests }
StExampleTestOfSomething >> testJustSmoke [
	<test>
	"do nothing"
]

{ #category : #tests }
StExampleTestOfSomething >> testSkipped [
	<test>
	TestSkip signal
]

{ #category : #tests }
StExampleTestOfSomething >> testThatImmediatelyErrors [
	<test>
	Error signal
]

{ #category : #tests }
StExampleTestOfSomething >> testThatImmediatelyFails [
	<test>
	TestFailure signal
]

{ #category : #tests }
StExampleTestOfSomething >> testThatSkips [
	<test>
	TestSkip signal
]

Class {
	#name : #BaselineOfSmallTest,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmallTest
}

{ #category : #baselines }
BaselineOfSmallTest >> baseline: spec [
	<baseline>
	
	spec for: #common do: [
		spec 
			package: 'SmallTest'
	]
]

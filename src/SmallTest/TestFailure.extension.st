Extension { #name : #TestFailure }

{ #category : #'*SmallTest' }
TestFailure >> asStSeverity [
	^ StSeverity fail
]

Extension { #name : #CompiledMethod }

{ #category : #'*SmallTest' }
CompiledMethod >> asStStep [
	^ StCase
		onSelector: self selector
		ofClass: self methodClass
]

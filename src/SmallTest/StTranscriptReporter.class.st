Class {
	#name : #StTranscriptReporter,
	#superclass : #StReporter,
	#category : #'SmallTest-Core'
}

{ #category : #'as yet unclassified' }
StTranscriptReporter >> reportCase: aTestCase during: aBlock [
	Transcript print: 'Running ' , aTestCase title , '...'; flush.
	aBlock value.
	Transcript print: 'passed.'; cr; flush. 
]

Class {
	#name : #StTranscriptReporter,
	#superclass : #StReporter,
	#category : #'SmallTest-Core'
}

{ #category : #execution }
StTranscriptReporter >> caseEnded: aTestCase withResult: testResult [
	Transcript
		print: testResult severity;
		nextPut: $.;
		cr; flush

]

{ #category : #execution }
StTranscriptReporter >> caseStarting: aTestCase [
	Transcript
		print: 'Running ';
		print: aTestCase;
		print: '...';
		flush

]

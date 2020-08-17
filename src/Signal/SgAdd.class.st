Class {
	#name : #SgAdd,
	#superclass : #SgBinaryGate,
	#category : #Signal
}

{ #category : #'accessing structure variables' }
SgAdd >> computeValue [ 
	
	^ input1 status & input2 status 
]

Class {
	#name : #SgOr,
	#superclass : #SgBinaryGate,
	#category : #Signal
}

{ #category : #'accessing structure variables' }
SgOr >> computeValue [ 
	
	^ input1 status | input2 status 
]

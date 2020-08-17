Class {
	#name : #SgOr,
	#superclass : #SgBinaryGate,
	#category : #'Signal-BeforeProject'
}

{ #category : #compute }
SgOr >> computeValue [ 
	
	^ input1 status | input2 status 
]

{ #category : #compute }
SgOr >> prefix [
	^ 'O-'
]

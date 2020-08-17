Class {
	#name : #SgAnd,
	#superclass : #SgBinaryGate,
	#category : #'Signal-BeforeProject'
}

{ #category : #compute }
SgAnd >> computeValue [ 
	
	^ input1 status & input2 status 
]

{ #category : #compute }
SgAnd >> id [ 
	^ 'A-', id asString
]

{ #category : #compute }
SgAnd >> prefix [
	^ 'A-'
]

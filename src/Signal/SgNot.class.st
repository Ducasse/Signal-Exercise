Class {
	#name : #SgNot,
	#superclass : #SgUnaryGate,
	#category : #'Signal-BeforeProject'
}

{ #category : #compute }
SgNot >> computeValue [ 

	^ input status not
]

{ #category : #compute }
SgNot >> prefix [
	^ 'N-'
]

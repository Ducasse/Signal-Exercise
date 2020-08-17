Class {
	#name : #SgValve,
	#superclass : #SgUnaryGate,
	#category : #'Signal-BeforeProject'
}

{ #category : #compute }
SgValve >> computeValue [ 

	^ input status
]

{ #category : #compute }
SgValve >> prefix [
	^ 'V-'
]

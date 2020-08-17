Class {
	#name : #SgElement,
	#superclass : #Object,
	#category : #Signal
}

{ #category : #'accessing structure variables' }
SgElement >> id [
	^ self printString
]

{ #category : #'accessing structure variables' }
SgElement >> reportStatus [

	^ self id, ' status: ', self status
]

{ #category : #'accessing structure variables' }
SgElement >> status [
	^ self subclassResponsibility 
]

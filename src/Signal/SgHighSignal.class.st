Class {
	#name : #SgHighSignal,
	#superclass : #Object,
	#instVars : [
		'elements'
	],
	#category : #'Signal-Project'
}

{ #category : #evaluating }
SgHighSignal >> and: aSignal [

	^ aSignal
	
]

{ #category : #evaluating }
SgHighSignal >> not [

	^ SgLowSignal new
]

{ #category : #evaluating }
SgHighSignal >> or: aSignal [

	^ self 
	
]

{ #category : #evaluating }
SgHighSignal >> printString [
	^ 'high'
]

{ #category : #evaluating }
SgHighSignal >> value [
	^ true
]

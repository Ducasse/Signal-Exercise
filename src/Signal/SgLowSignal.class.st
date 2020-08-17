Class {
	#name : #SgLowSignal,
	#superclass : #Object,
	#instVars : [
		'elements'
	],
	#category : #'Signal-Project'
}

{ #category : #evaluating }
SgLowSignal >> not [

	^ SgHighSignal new
]

{ #category : #evaluating }
SgLowSignal >> value [

	^ false
]

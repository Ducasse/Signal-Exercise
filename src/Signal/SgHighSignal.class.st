Class {
	#name : #SgHighSignal,
	#superclass : #Object,
	#instVars : [
		'elements'
	],
	#category : #'Signal-Project'
}

{ #category : #evaluating }
SgHighSignal >> not [

	^ SgLowSignal new
]

{ #category : #evaluating }
SgHighSignal >> value [
	^ true
]

Class {
	#name : #SgLowSignal,
	#superclass : #Object,
	#instVars : [
		'elements'
	],
	#category : #'Signal-Project'
}

{ #category : #evaluating }
SgLowSignal >> and: aSignal [

	^ self 
]

{ #category : #evaluating }
SgLowSignal >> not [

	^ SgHighSignal new
]

{ #category : #evaluating }
SgLowSignal >> or: aSignal [

	^ aSignal
]

{ #category : #evaluating }
SgLowSignal >> value [

	^ false
]

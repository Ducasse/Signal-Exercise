Class {
	#name : #SgCircuit,
	#superclass : #Object,
	#instVars : [
		'elements'
	],
	#category : #'Signal-Project'
}

{ #category : #accessing }
SgCircuit >> elements [
	^ elements
]

{ #category : #accessing }
SgCircuit >> elements: aList [

	elements addAll: aList
]

{ #category : #accessing }
SgCircuit >> ids [

	^ (elements collect: [ :each | each id ]) sorted
]

{ #category : #accessing }
SgCircuit >> initialize [
	super initialize.
	elements := OrderedCollection new.
]

{ #category : #accessing }
SgCircuit >> switches [

	^ elements select: [ :each | each isSwitch]
]

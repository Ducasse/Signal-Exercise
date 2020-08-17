Class {
	#name : #SgNot,
	#superclass : #SgAbstractGate,
	#instVars : [
		'input'
	],
	#category : #Signal
}

{ #category : #accessing }
SgNot >> setInput: aSgSwitch [ 
	input := aSgSwitch
]

{ #category : #accessing }
SgNot >> status [ 
	input isNil 	
		ifTrue: [ SgNotConnected signal ].
	^ input status not
]

Class {
	#name : #SgUnaryGate,
	#superclass : #SgAbstractGate,
	#instVars : [
		'input'
	],
	#category : #'Signal-BeforeProject'
}

{ #category : #accessing }
SgUnaryGate >> setInput: aSgSwitch [ 
	input := aSgSwitch
]

{ #category : #accessing }
SgUnaryGate >> status [ 
	input isNil 	
		ifTrue: [ SgNotConnected signal ].
	^ self computeValue
]

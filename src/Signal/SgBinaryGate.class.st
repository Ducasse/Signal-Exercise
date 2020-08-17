Class {
	#name : #SgBinaryGate,
	#superclass : #SgAbstractGate,
	#instVars : [
		'input1',
		'input2'
	],
	#category : #'Signal-BeforeProject'
}

{ #category : #compute }
SgBinaryGate >> computeValue [

	^ false
]

{ #category : #accessing }
SgBinaryGate >> input1 [
	^ input1
]

{ #category : #accessing }
SgBinaryGate >> input1: anObject [
	input1 := anObject
]

{ #category : #accessing }
SgBinaryGate >> input2 [
	^ input2
]

{ #category : #accessing }
SgBinaryGate >> input2: anObject [
	input2 := anObject
]

{ #category : #accessing }
SgBinaryGate >> setInput1: aSgSwitch [ 
	input1 := aSgSwitch
]

{ #category : #accessing }
SgBinaryGate >> setInput2: aSgSwitch [ 
	input2 := aSgSwitch
]

{ #category : #accessing }
SgBinaryGate >> status [
	(input1 isNil or: [ input2 isNil])
			ifTrue: [ SgNotConnected signal ].
	^ self computeValue
]

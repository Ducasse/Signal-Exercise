Class {
	#name : #SgSignalTest,
	#superclass : #TestCase,
	#category : #'Signal-Project'
}

{ #category : #tests }
SgSignalTest >> testHighSignal [

	self assert: SgHighSignal new value 	
]

{ #category : #tests }
SgSignalTest >> testHighSignalAnd [

	self assert: (SgHighSignal new and: SgHighSignal new) value. 	
	self deny: (SgHighSignal new and: SgLowSignal new) value. 
	self deny: (SgLowSignal new and: SgHighSignal new) value. 
	self deny: (SgLowSignal new and: SgLowSignal new) value. 
]

{ #category : #tests }
SgSignalTest >> testHighSignalOr [

	self assert: (SgHighSignal new or: SgHighSignal new) value. 	
	self assert: (SgHighSignal new or: SgLowSignal new) value. 
	self assert: (SgLowSignal new or: SgHighSignal new) value. 
	self deny: (SgLowSignal new or: SgLowSignal new) value. 
]

{ #category : #tests }
SgSignalTest >> testLowSignal [

	self deny: SgLowSignal new value 	
]

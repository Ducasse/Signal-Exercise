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
SgSignalTest >> testLowSignal [

	self deny: SgLowSignal new value 	
]

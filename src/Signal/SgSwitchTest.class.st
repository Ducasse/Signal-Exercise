Class {
	#name : #SgSwitchTest,
	#superclass : #TestCase,
	#category : #Signal
}

{ #category : #tests }
SgSwitchTest >> testCreation [

	self assert: SgSwitch new status
	
]

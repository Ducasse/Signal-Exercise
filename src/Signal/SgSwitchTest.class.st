Class {
	#name : #SgSwitchTest,
	#superclass : #TestCase,
	#category : #Signal
}

{ #category : #tests }
SgSwitchTest >> testCreation [

	self assert: SgSwitch new status
	
]

{ #category : #tests }
SgSwitchTest >> testOff [

	self deny: (SgSwitch new off ; status)
	
]

{ #category : #tests }
SgSwitchTest >> testToggle [

	self assert: (SgSwitch new off ; toggle ;  status)
	
]

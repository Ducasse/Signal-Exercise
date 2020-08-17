Class {
	#name : #SgBinaryGateTest,
	#superclass : #TestCase,
	#category : #Signal
}

{ #category : #tests }
SgBinaryGateTest >> testAdd [

	self assert: ( SgAdd new 
							setInput1: SgSwitch new;
							setInput2: SgSwitch new;
							status ).
	self deny: ( SgAdd new 
							setInput1: SgSwitch new off;
							setInput2: SgSwitch new;
							status ).
]

{ #category : #tests }
SgBinaryGateTest >> testConnectedGateDoesNotRaiseAnError [

	self shouldnt: [ SgBinaryGate new 
							setInput1: SgSwitch new;
							setInput2: SgSwitch new;
							status  ] raise: SgNotConnected  
]

{ #category : #tests }
SgBinaryGateTest >> testHalfConnectedGateRaisesAnError [

	self should: [ SgBinaryGate new 
							setInput1: SgSwitch new;
								status  ] raise: SgNotConnected.
							
	self should: [ SgBinaryGate new 
							setInput2: SgSwitch new;
								status  ] raise: SgNotConnected  
]

{ #category : #tests }
SgBinaryGateTest >> testNot [

	self assert: ( SgNot new 
							setInput: SgSwitch new off;
							status ).
	self deny: ( SgNot new 
							setInput: SgSwitch new;
							status ).
]

{ #category : #tests }
SgBinaryGateTest >> testNotFullConnectedGateRaisesAnError [

	self should: [ SgBinaryGate new status ] raise: SgNotConnected  
]

{ #category : #tests }
SgBinaryGateTest >> testOr [

	self assert: ( SgOr new 
							setInput1: SgSwitch new;
							setInput2: SgSwitch new;
							status ).
	self deny: ( SgOr new 
							setInput1: SgSwitch new off;
							setInput2: SgSwitch new off;
							status ).
]

Class {
	#name : #SgCircuitTest,
	#superclass : #TestCase,
	#instVars : [
		'circuit'
	],
	#category : #'Signal-Project'
}

{ #category : #tests }
SgCircuitTest >> setUp [
	| int1 int2 intSecurity or and not valve |
	int1 := SgSwitch new idNumber: 1; yourself.
	int2 := SgSwitch new idNumber: 2; off;  yourself.
	intSecurity := SgSwitch new idNumber: 3; yourself.
	
	or := SgOr new 
				idNumber: 4;
				setInput1: int1;
				setInput2: int2.
	
	not := SgNot new 
				setInput: intSecurity;
				idNumber: 5.

	and := SgAnd new 
				idNumber: 6;
				setInput1: or;
				setInput2: not.
	
	valve := SgValve new
					idNumber: 7;
	 				setInput: and.
					
	circuit := SgCircuit new 
			elements: { int1 . int2 . intSecurity . or . not . and . valve }.
		
]

{ #category : #tests }
SgCircuitTest >> testElements [
		
	self assert: circuit elements size equals: 7
]

{ #category : #tests }
SgCircuitTest >> testIds [
		
	self assert: circuit ids asArray equals: #('A-6' 'N-5' 'O-4' 'S-1' 'S-2' 'S-3' 'V-7')
]

{ #category : #tests }
SgCircuitTest >> testSwitches [
		
	self assert: circuit switches size equals: 3
]
Class {
	#name : #SgElementTest,
	#superclass : #TestCase,
	#category : #Signal
}

{ #category : #tests }
SgElementTest >> testId [
	self assert: SgElement new id equals: 'a SgElement'
]

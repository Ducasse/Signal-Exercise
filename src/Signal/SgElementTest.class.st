Class {
	#name : #SgElementTest,
	#superclass : #TestCase,
	#category : #'Signal-BeforeProject'
}

{ #category : #tests }
SgElementTest >> testId [
	self assert: (SgElement new id: 2) id equals: 2
]

{ #category : #tests }
SgElementTest >> testPrinting [
	self assert: (SgElement new id: 2) printString equals: 'a SgElement id: 2'
]

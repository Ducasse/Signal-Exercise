Class {
	#name : #SgElement,
	#superclass : #Object,
	#instVars : [
		'id'
	],
	#category : #'Signal-BeforeProject'
}

{ #category : #accessing }
SgElement >> id [ 
	^ self prefix, id asString
]

{ #category : #accessing }
SgElement >> idNumber: aNumber [
	id := aNumber
]

{ #category : #testing }
SgElement >> initialize [

	super initialize.
	id := 10000 atRandom
]

{ #category : #testing }
SgElement >> isSwitch [

	^ false
]

{ #category : #accessing }
SgElement >> prefix [
	^ ''
]

{ #category : #accessing }
SgElement >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' id: '.
	aStream print: id
]

{ #category : #report }
SgElement >> reportStatus [

	^ self id, ' status: ', self status
]

{ #category : #accessing }
SgElement >> status [
	^ self subclassResponsibility 
]

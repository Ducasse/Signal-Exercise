Class {
	#name : #SgSwitch,
	#superclass : #SgElement,
	#instVars : [
		'isOn'
	],
	#category : #Signal
}

{ #category : #accessing }
SgSwitch >> initialize [

	self on
]

{ #category : #accessing }
SgSwitch >> off [
	isOn := false
]

{ #category : #accessing }
SgSwitch >> on [ 
	isOn := true
]

{ #category : #accessing }
SgSwitch >> status [
	^ isOn
]

{ #category : #accessing }
SgSwitch >> toggle [ 
	isOn := isOn not
]

Class {
	#name : #SgSwitch,
	#superclass : #SgElement,
	#instVars : [
		'isOn'
	],
	#category : #'Signal-BeforeProject'
}

{ #category : #accessing }
SgSwitch >> initialize [

	self on
]

{ #category : #testing }
SgSwitch >> isSwitch [ 

	^ true
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
SgSwitch >> prefix [ 
	^ 'S-'
]

{ #category : #accessing }
SgSwitch >> status [
	^ isOn
]

{ #category : #accessing }
SgSwitch >> toggle [ 
	isOn := isOn not
]

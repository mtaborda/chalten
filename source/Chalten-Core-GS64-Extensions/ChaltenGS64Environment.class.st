Class {
	#name : 'ChaltenGS64Environment',
	#superclass : 'ChaltenEnvironmentBehavior',
	#category : 'Chalten-Core-GS64-Extensions-',
	#package : 'Chalten-Core-GS64-Extensions',
	#tag : ''
}

{ #category : 'testing' }
ChaltenGS64Environment class >> isForCurrentPlatform [

	^ LanguagePlatform current class name = #GemStone64Platform
]

{ #category : 'accessing time' }
ChaltenGS64Environment >> localTimeOffset [

	self halt: 'no yet defined'
]

{ #category : 'accessing time' }
ChaltenGS64Environment >> microsecondsClock [

	self halt: 'no yet defined'
]

{ #category : 'accessing time' }
ChaltenGS64Environment >> millisecondsClock [

	self halt: 'no yet defined'
]

{ #category : 'accessing time' }
ChaltenGS64Environment >> secondsClock [

	self halt: 'no yet defined'
]

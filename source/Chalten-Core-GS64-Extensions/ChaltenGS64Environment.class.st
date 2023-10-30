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

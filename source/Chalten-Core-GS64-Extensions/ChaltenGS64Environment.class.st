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

	^TimeZone current secondsFromGmt / 3600
]

{ #category : 'accessing time' }
ChaltenGS64Environment >> microsecondsClock [

	^ self
		  withGlobalNamed: #System
		  do: [ :system | system _timeGmtMicroSeconds ]
]

{ #category : 'accessing time' }
ChaltenGS64Environment >> millisecondsClock [

	^ self withGlobalNamed: #System do: [ :system | system _timeMs ]
]

{ #category : 'accessing time' }
ChaltenGS64Environment >> secondsClock [

	^ self
		  withGlobalNamed: #DateAndTime
		  do: [ :dateAndTimeClass | dateAndTimeClass secondsSince2001 ]
]

{ #category : 'accessing - private' }
ChaltenGS64Environment >> withGlobalNamed: aGlobalName do: aOneArgBlock [

	^ LanguagePlatform current
		  globalNamed: aGlobalName
		  ifPresent: aOneArgBlock
		  ifAbsent: [
			  self error: ('<1s> global variable not found' expandMacrosWith:
					   aGlobalName asString) ]
]

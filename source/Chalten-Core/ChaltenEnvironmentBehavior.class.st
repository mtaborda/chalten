"
A ChaltenEnvironment is an abstract class for defining behavior related to the environment.

"
Class {
	#name : 'ChaltenEnvironmentBehavior',
	#superclass : 'Object',
	#category : 'Chalten-Core-Time',
	#package : 'Chalten-Core',
	#tag : 'Time'
}

{ #category : 'initialization' }
ChaltenEnvironmentBehavior class >> initializeAfterLoad [

	| environmentClass |
	environmentClass := self initializeEnvironment.
	Smalltalk at: #ChaltenEnvironment put: environmentClass new
]

{ #category : 'initialization' }
ChaltenEnvironmentBehavior class >> initializeEnvironment [
	"Delete this abstract class and instead, keep the concrete ones and load them from different platform-specific packages? Undefined Environment would not exist anymore as well."

	^ self subclasses
		  detect: [ :each | each isForCurrentPlatform ]
		  ifNone: [ self undefinedEnvironment ]
]

{ #category : 'testing' }
ChaltenEnvironmentBehavior class >> isForCurrentPlatform [

	self subclassResponsibility
]

{ #category : 'accessing time' }
ChaltenEnvironmentBehavior >> calendarNamed: aCalendarName [

	^ LanguagePlatform current
		  globalNamed: aCalendarName asSymbol
		  ifAbsent: [
			  self error: ('Calendar "<1s>" was not found.' expandMacrosWith:
					   aCalendarName asString) ]
]

{ #category : 'accessing time' }
ChaltenEnvironmentBehavior >> localTimeOffset [

	self subclassResponsibility
]

{ #category : 'accessing time' }
ChaltenEnvironmentBehavior >> microsecondsClock [

	self subclassResponsibility
]

{ #category : 'accessing time' }
ChaltenEnvironmentBehavior >> millisecondsClock [

	self subclassResponsibility
]

{ #category : 'accessing time' }
ChaltenEnvironmentBehavior >> secondsClock [

	self subclassResponsibility
]

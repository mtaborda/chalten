"
A TheBeginningOfTimeClass is an object used to represent the beginning of time. TheBeginningOfTime” is always less than any point in time.

"
Class {
	#name : 'TheBeginningOfTimeClass',
	#superclass : 'EndsOfTimeline',
	#classInstVars : [
		'uniqueInstance'
	],
	#category : 'Chalten-Core-Time',
	#package : 'Chalten-Core',
	#tag : 'Time'
}

{ #category : 'initialization' }
TheBeginningOfTimeClass class >> initializeUniqueInstance [

	uniqueInstance := super new
]

{ #category : 'instance creation' }
TheBeginningOfTimeClass class >> new [

	^uniqueInstance
]

{ #category : 'magnitude protocol' }
TheBeginningOfTimeClass >> < aMagnitude [

	^true
]

{ #category : 'magnitude protocol' }
TheBeginningOfTimeClass >> > aMagnitude [

	^false
]

{ #category : 'accessing days - private' }
TheBeginningOfTimeClass >> amountOfDaysFromEpoch [
	"To-do: avoid creating new instance.
	In Pharo: ^MinusInfinity
	In GS64: 	^ArithmeticObject minusInfinity"

	^ MinusInfinityClass new
]

{ #category : 'printing' }
TheBeginningOfTimeClass >> printOn: aStream [

	aStream nextPutAll: 'The beginning of time'
]

Extension { #name : 'TheBeginningOfTimeClass' }

{ #category : '*Chalten-Core-Pharo-Extensions' }
TheBeginningOfTimeClass class >> initialize [

	super initialize.
	self initializeUniqueInstance.
	self initializeGlobalVariable
]

{ #category : '*Chalten-Core-Pharo-Extensions' }
TheBeginningOfTimeClass class >> initializeGlobalVariable [

	Smalltalk at: #TheBeginningOfTime put: uniqueInstance
]

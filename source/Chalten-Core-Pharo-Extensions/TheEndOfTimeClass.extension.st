Extension { #name : 'TheEndOfTimeClass' }

{ #category : '*Chalten-Core-Pharo-Extensions' }
TheEndOfTimeClass class >> initialize [

	super initialize.
	self initializeUniqueInstance.
	self initializeGlobalVariable
]

{ #category : '*Chalten-Core-Pharo-Extensions' }
TheEndOfTimeClass class >> initializeGlobalVariable [

	Smalltalk at: #TheEndOfTime put: uniqueInstance
]

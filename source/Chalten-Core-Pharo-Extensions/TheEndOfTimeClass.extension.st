Extension { #name : 'TheEndOfTimeClass' }

{ #category : '*Chalten-Core-Pharo-Extensions' }
TheEndOfTimeClass class >> initializeAfterLoad [

	Smalltalk at: #TheEndOfTime put: self new
]

Extension { #name : 'TheBeginningOfTimeClass' }

{ #category : '*Chalten-Core-Pharo-Extensions' }
TheBeginningOfTimeClass class >> initializeAfterLoad [

	Smalltalk at: #TheBeginningOfTime put: self new
]

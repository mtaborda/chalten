Extension { #name : 'TimeUnitsGlobals' }

{ #category : '*Chalten-Core-Pharo-Extensions' }
TimeUnitsGlobals class >> initializeAfterLoad [

	Smalltalk at: #TimeUnits put: self new
]

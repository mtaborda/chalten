Extension { #name : 'TimeZonesGlobals' }

{ #category : '*Chalten-Core-Pharo-Extensions' }
TimeZonesGlobals class >> initializeAfterLoad [

	Smalltalk at: #TimeZones put: self new
]

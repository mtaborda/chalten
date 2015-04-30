test converting
testAsIslamicDate

	self assert: (Muharram first, 1429) = (January tenth, 2008) asIslamic.
	self assert: (RabiI first, 1429) = (March ninth, 2008) asIslamic.
	self assert: (Ramadan fifth, 1420) = (December thirteenth, 1999) asIslamic.
	self assert: (Shawwal twelfth, 1435) = (August ninth, 2014) asIslamic.
	self assert: (DhuAlHijja second, 1440) = (August fourth, 2019) asIslamic
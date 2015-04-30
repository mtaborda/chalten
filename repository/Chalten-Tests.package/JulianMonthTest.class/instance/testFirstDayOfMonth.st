test accessing
testFirstDayOfMonth

	self assert: january firstDayOfMonth = JulianJanuary first.
	self assert: february firstDayOfMonth = JulianFebruary first.
	self assert: march firstDayOfMonth = JulianMarch first.
	self assert: april firstDayOfMonth = JulianApril first.
	self assert: may firstDayOfMonth = JulianMay first.
	self assert: june firstDayOfMonth = JulianJune first.
	self assert: july firstDayOfMonth = JulianJuly first.
	self assert: august firstDayOfMonth = JulianAugust first.
	self assert: september firstDayOfMonth = JulianSeptember first.
	self assert: october firstDayOfMonth = JulianOctober first.
	self assert: november firstDayOfMonth = JulianNovember first.
	self assert: december firstDayOfMonth = JulianDecember first
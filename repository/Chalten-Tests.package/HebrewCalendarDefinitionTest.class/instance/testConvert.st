test converting
testConvert

	self assert: (HebrewCalendar convert: March twentieth, 2007) = (Nisan first, 5767).
	self assert: (HebrewCalendar convert: June fourth, 2008) = (Sivan first, 5768).
	self assert: (HebrewCalendar convert: December second, 2008) = (Kislev fifth, 5769).
	self assert: (HebrewCalendar convert: March tenth, 2006) = (Adar tenth, 5766).
	self assert: (HebrewCalendar convert: February eleventh, 2016) = (AdarI second, 5776).
	
	self assert: (HebrewCalendar convert: (March twentieth, 2007 at: TimeOfDay noon)) =
		(Nisan first, 5767 at: TimeOfDay noon).
	self assert: (HebrewCalendar convert: (June fourth, 2008 at: TimeOfDay noon)) =
		(Sivan first, 5768 at: TimeOfDay noon).
	self assert: (HebrewCalendar convert: (December second, 2008 at: TimeOfDay noon)) =
		(Kislev fifth, 5769 at: TimeOfDay noon).
	self assert: (HebrewCalendar convert: (March tenth, 2006 at: TimeOfDay noon)) =
		(Adar tenth, 5766 at: TimeOfDay noon).
	self assert: (HebrewCalendar convert: (February eleventh, 2016 at: TimeOfDay noon)) =
		(AdarI second, 5776 at: TimeOfDay noon).
	
	self
		should: [ HebrewCalendar convert: 1 ]
		raise: Error
		withExceptionDo: [ :ex | self assert: ex description = 'Error: 1 can`t be converted to Date nor DateTime' ]
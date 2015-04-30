test converting
testConvert

	self assert: (IslamicCalendar convert: January fourteenth, 2005) = (DhuAlHijja third, 1425).
	self assert: (IslamicCalendar convert: March fourteenth, 2005) = (Safar third, 1426).
	self assert: (IslamicCalendar convert: September eighteenth, 1999) = (JumadaII seventh, 1420).
	self assert: (IslamicCalendar convert: October twentyfifth, 2008) = (Shawwal twentyfourth, 1429).
	self assert: (IslamicCalendar convert: December fifteenth, 2015) = (RabiI third, 1437).
	
	self assert: (IslamicCalendar convert: (January fourteenth, 2005 at: TimeOfDay noon)) =
		(DhuAlHijja third, 1425 at: TimeOfDay noon).
	self assert: (IslamicCalendar convert: (March fourteenth, 2005 at: TimeOfDay noon)) =
		(Safar third, 1426 at: TimeOfDay noon).
	self assert: (IslamicCalendar convert: (September eighteenth, 1999 at: TimeOfDay noon)) =
		(JumadaII seventh, 1420 at: TimeOfDay noon).
	self assert: (IslamicCalendar convert: (October twentyfifth, 2008 at: TimeOfDay noon)) =
		(Shawwal twentyfourth, 1429 at: TimeOfDay noon).
	self assert: (IslamicCalendar convert: (December fifteenth, 2015 at: TimeOfDay noon)) =
		(RabiI third, 1437 at: TimeOfDay noon).
	
	self
		should: [ IslamicCalendar convert: 1 ]
		raise: Error
		withExceptionDo: [ :ex | self assert: ex description = 'Error: 1 can`t be converted to Date nor DateTime' ]
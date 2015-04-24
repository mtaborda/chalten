test converting
testConvert

	self assert: (JulianCalendar convert: January fourteenth , 2005) = (JulianJanuary first , 2005).
	self assert: (JulianCalendar convert: March fourteenth , 2005) = (JulianMarch first , 2005).
	self assert: (JulianCalendar convert: September eighteenth , 1999) = (JulianSeptember fifth , 1999).
	self assert: (JulianCalendar convert: October twentyfifth , 2008) = (JulianOctober twelfth , 2008).
	self assert: (JulianCalendar convert: December fifteenth , 2015) = (JulianDecember second , 2015).
	
	self assert: (JulianCalendar convert: (January fourteenth , 2005 at: TimeOfDay noon)) =
		(JulianJanuary first , 2005 at: TimeOfDay noon).
	self assert: (JulianCalendar convert: (March fourteenth , 2005 at: TimeOfDay noon)) =
		(JulianMarch first , 2005 at: TimeOfDay noon).
	self assert: (JulianCalendar convert: (September eighteenth , 1999 at: TimeOfDay noon)) =
		(JulianSeptember fifth , 1999 at: TimeOfDay noon).
	self assert: (JulianCalendar convert: (October twentyfifth , 2008 at: TimeOfDay noon)) =
		(JulianOctober twelfth , 2008 at: TimeOfDay noon).
	self assert: (JulianCalendar convert: (December fifteenth , 2015 at: TimeOfDay noon)) =
		(JulianDecember second , 2015 at: TimeOfDay noon).
	
	self
		should: [ JulianCalendar convert: 1 ]
		raise: Error
		withExceptionDo: [ :ex | self assert: ex description = 'Error: 1 can`t be converted to Date nor DateTime' ]
test converting
testConvert

	self assert: (GregorianCalendar convert: January fourteenth, 2005) = (January fourteenth, 2005).
	self assert: (GregorianCalendar convert: March fourteenth, 2005) = (March fourteenth, 2005).
	self assert: (GregorianCalendar convert: September eighteenth, 1999) = (September eighteenth, 1999).
	self assert: (GregorianCalendar convert: October twentyfifth, 2008) = (October twentyfifth, 2008).
	self assert: (GregorianCalendar convert: December fifteenth, 2015) = (December fifteenth, 2015).
	
	self assert: (GregorianCalendar convert: (January fourteenth, 2005 at: TimeOfDay noon)) =
		(January fourteenth, 2005 at: TimeOfDay noon).
	self assert: (GregorianCalendar convert: (March fourteenth, 2005 at: TimeOfDay noon)) =
		(March fourteenth, 2005 at: TimeOfDay noon).
	self assert: (GregorianCalendar convert: (September eighteenth, 1999 at: TimeOfDay noon)) =
		(September eighteenth, 1999 at: TimeOfDay noon).
	self assert: (GregorianCalendar convert: (October twentyfifth, 2008 at: TimeOfDay noon)) =
		(October twentyfifth, 2008 at: TimeOfDay noon).
	self assert: (GregorianCalendar convert: (December fifteenth, 2015 at: TimeOfDay noon)) =
		(December fifteenth, 2015 at: TimeOfDay noon).
	
	self
		should: [ GregorianCalendar convert: 1 ]
		raise: Error
		withExceptionDo: [ :ex | self assert: ex description = 'Error: 1 can`t be converted to Date nor DateTime' ]
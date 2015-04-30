test converting
testConvertToSmalltalkDate

	| gregorianDate smalltalkDate |
	gregorianDate := FixedDate 
		yearNumber: 2007
		monthNumber: 2
		dayNumber: 21
		calendar: GregorianCalendar.
	smalltalkDate := Date 
		newDay: 21
		month: 2
		year: 2007.
		
	self assert: (GregorianCalendar convertToSmalltalkDate: gregorianDate) = smalltalkDate
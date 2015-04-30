test converting
testConvertToSmalltalkDate

	| julianDate smalltalkDate |

	julianDate := JulianFebruary twentyfirst, 2007.
	smalltalkDate := Date newDay: 6 month: 3 year: 2007.
	self assert: (JulianCalendar convertToSmalltalkDate: julianDate) = smalltalkDate
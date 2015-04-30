test converting
testConvertToSmalltalkDate

	| hebrewDate smalltalkDate |

	hebrewDate := Iyyar twentyfirst, 5767.
	smalltalkDate := Date newDay: 9 month: 5 year: 2007.
	self assert: (HebrewCalendar convertToSmalltalkDate: hebrewDate) = smalltalkDate
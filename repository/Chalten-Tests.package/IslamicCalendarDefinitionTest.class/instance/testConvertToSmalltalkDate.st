test converting
testConvertToSmalltalkDate

	| islamicDate smalltalkDate |

	islamicDate := Safar twentyfirst, 1430.
	smalltalkDate := Date newDay: 17 month: 2 year: 2009.
	self assert: (IslamicCalendar convertToSmalltalkDate: islamicDate) = smalltalkDate
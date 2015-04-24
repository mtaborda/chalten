test converting
testAsSmalltalkDate

	| julianDate gregorianDate smalltalkDate |

	julianDate := JulianMay fourth, 2007.
	gregorianDate := julianDate asGregorian.
	smalltalkDate := julianDate asSmalltalkDate.

	self assert: gregorianDate year number = smalltalkDate year.
	self assert: gregorianDate month number = smalltalkDate monthIndex.
	self assert: gregorianDate dayNumber = smalltalkDate dayOfMonth
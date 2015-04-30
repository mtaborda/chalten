test converting
testAsSmalltalkDate

	| hebrewDate gregorianDate date |

	hebrewDate := Tammuz fourth, 5768.
	gregorianDate := hebrewDate asGregorian.
	date := hebrewDate asSmalltalkDate.

	self assert: gregorianDate year number = date year.
	self assert: gregorianDate month number = date monthIndex.
	self assert: gregorianDate dayNumber = date dayOfMonth
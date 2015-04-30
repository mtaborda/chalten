test converting
testAsSmalltalkDate

	| islamicDate gregorianDate date |

	islamicDate := JumadaI fourth, 1429.
	gregorianDate := islamicDate asGregorian.
	date := islamicDate asSmalltalkDate.

	self assert: gregorianDate year number = date year.
	self assert: gregorianDate month number = date monthIndex.
	self assert: gregorianDate dayNumber = date dayOfMonth
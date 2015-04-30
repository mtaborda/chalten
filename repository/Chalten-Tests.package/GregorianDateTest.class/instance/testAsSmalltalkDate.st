test converting
testAsSmalltalkDate

	| gregorianDate smalltalkDate |

	gregorianDate := May fourth, 2007.
	smalltalkDate := gregorianDate asSmalltalkDate.

	self assert: gregorianDate year number = smalltalkDate year.
	self assert: gregorianDate month number = smalltalkDate monthIndex.
	self assert: gregorianDate dayNumber = smalltalkDate dayOfMonth
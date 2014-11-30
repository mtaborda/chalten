test querying
testPreviousMonth

	| month |

	month := JulianJanuary, 2004.
	self assert: (month previousMonth: calendar january) = (JulianJanuary, 2003).
	self assert: (month previousMonth: calendar january in: twoYears) = (JulianJanuary, 2002).

	month := JulianApril, 2004.
	self assert: (month previousMonth: calendar february) = (JulianFebruary, 2004).
	self assert: (month previousMonth: calendar february in: twoYears) = (JulianFebruary, 2002).

	month := JulianJuly, 2004.
	self assert: (month previousMonth: calendar january) = (JulianJanuary, 2004).
	self assert: (month previousMonth: calendar january in: twoYears) = (JulianJanuary, 2002).

	month := JulianJanuary, 1.
	self assert: (month previousMonth: calendar january) = (JulianJanuary, -1).
	self assert: (month previousMonth: calendar december) = (JulianDecember, -1)
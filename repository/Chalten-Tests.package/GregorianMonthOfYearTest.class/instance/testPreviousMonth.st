test querying
testPreviousMonth

	| month |

	month := January, 2004.
	self assert: (month previousMonth: calendar january) = (January, 2003).
	self assert: (month previousMonth: calendar january in: twoYears) = (January, 2002).

	month := April, 2004.
	self assert: (month previousMonth: calendar february) = (February, 2004).
	self assert: (month previousMonth: calendar february in: twoYears) = (February, 2002).

	month := July, 2004.
	self assert: (month previousMonth: calendar january) = (January, 2004).
	self assert: (month previousMonth: calendar january in: twoYears) = (January, 2002).

	month := January, 1.
	self assert: (month previousMonth: calendar january) = (January, 0).
	self assert: (month previousMonth: calendar december) = (December, 0)
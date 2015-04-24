magnitude protocol
< aMonthOfYear

	self assertIsSameKindAs: aMonthOfYear.
	^year < aMonthOfYear year
		or: [ year = aMonthOfYear year and: [
			self month isPreviousTo: aMonthOfYear month in: year ]]
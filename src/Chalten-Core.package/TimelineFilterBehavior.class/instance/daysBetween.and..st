enumerating
daysBetween: aDate and: anotherDate

	^(aDate to: anotherDate) select: [:date | self includes: date]
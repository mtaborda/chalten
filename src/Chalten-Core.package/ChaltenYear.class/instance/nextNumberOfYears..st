enumerating
nextNumberOfYears: numberOfYears

	| newNumber |
	newNumber := self newNumberFrom: numberOfYears.
	^self class number: newNumber calendar: calendar
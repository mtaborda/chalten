enumerating
skip: aNumberOfDays

	| daysToSkip |
	
	daysToSkip := (aNumberOfDays convertTo: TimeUnits day) amount.
	daysToSkip > 0 
		ifTrue: [ daysToSkip timesRepeat: [ self next ] ]
		ifFalse: [ daysToSkip negated timesRepeat: [ self previous ] ]
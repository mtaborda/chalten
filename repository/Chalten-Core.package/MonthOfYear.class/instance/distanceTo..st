querying
distanceTo: aMonthOfYear

	| stream |

	aMonthOfYear < self ifTrue: [^(aMonthOfYear distanceTo: self) negated].
	stream := MonthsOfYearsStream startingOn: self.
	^stream distanceFrom: self to: aMonthOfYear
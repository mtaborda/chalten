days accessing
dayOf: aDate

	| dayPositionInWeek |

	dayPositionInWeek :=
		aDate numberOfDaysFromEpoch amount + 1 \\ self amountOfDaysPerWeek + 1.
	^self dayPositionedInWeek: dayPositionInWeek
comparing
= aDate

	^(aDate isKindOf: DateBehavior)
		and: [self numberOfDaysFromEpoch = aDate numberOfDaysFromEpoch]
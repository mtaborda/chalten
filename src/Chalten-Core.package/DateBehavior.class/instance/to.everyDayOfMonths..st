interval protocol
to: aDate everyDayOfMonths: aCollectionOfDayOfMonths

	^(self to: aDate)
		select: [:date | aCollectionOfDayOfMonths includes: date dayOfMonth]
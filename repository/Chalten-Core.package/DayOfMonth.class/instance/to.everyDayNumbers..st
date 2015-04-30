interval protocol
to: aDayOfMonth everyDayNumbers: aCollectionOfDayNumbers

	^(self to: aDayOfMonth) select: [:dayOfMonth | aCollectionOfDayNumbers includes: dayOfMonth dayNumber]
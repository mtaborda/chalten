interval protocol
to: aDate everyDayNumbers: aCollectionOfDayNumbers

	^(self to: aDate) select: [:date | aCollectionOfDayNumbers includes: date dayNumber]
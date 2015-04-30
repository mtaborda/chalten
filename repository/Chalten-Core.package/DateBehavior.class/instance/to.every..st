interval protocol
to: aDate every: aCollectionOfDays

	^(self to: aDate) select: [:date | aCollectionOfDays includes: date day]
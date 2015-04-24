testing
isLastDayOfYear

	^self isLastDayOfMonth and: [month = self calendar lastMonth]
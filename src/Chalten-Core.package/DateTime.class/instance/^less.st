magnitude protocol
< aDateTime

	| dateTimeInSameZone |
	
	self assertIsSameKindAs: aDateTime.
	dateTimeInSameZone := aDateTime convertTo: zone.
	^date < dateTimeInSameZone date
		or: [ date = dateTimeInSameZone date and: [ timeOfDay < dateTimeInSameZone timeOfDay ]]
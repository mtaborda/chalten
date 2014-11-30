testing
isTheSameInstantThan: aDateTime

	| dateTimeInSameZone |
	dateTimeInSameZone := aDateTime convertTo: zone.
	^date = dateTimeInSameZone date and: [
		timeOfDay = dateTimeInSameZone timeOfDay ]
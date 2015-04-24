querying
distanceTo: aDay

	| stream |
	
	stream := CircularReadStream on: self calendar days moving: TimeUnits day.
	^stream distanceFrom: self to: aDay
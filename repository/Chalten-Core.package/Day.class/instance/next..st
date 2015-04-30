enumerating
next: aNumberOfDays

	| stream |
	
	stream := CircularReadStream on: self calendar days moving: TimeUnits day.
	stream upTo: self.
	^stream next: aNumberOfDays
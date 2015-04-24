accessing
milliseconds
	
	| seconds |
	
	seconds := timeFromMidnight convertTo: TimeUnits second.
	^(seconds - seconds truncated) convertTo: TimeUnits millisecond
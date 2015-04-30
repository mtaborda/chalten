accessing
seconds
	
	^((timeFromMidnight - self hours - self minutes) convertTo: TimeUnits second) truncated
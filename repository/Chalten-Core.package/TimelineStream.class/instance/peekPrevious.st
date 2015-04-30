enumerating
peekPrevious
	
	| nextDate |
	
	nextDate := current.
	[ nextDate := nextDate previous.
	(timelineFilter includes: nextDate) ] whileFalse.

	^nextDate
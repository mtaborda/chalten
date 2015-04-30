enumerating
peek
	
	| currentDate |
	
	currentDate := current.
	[ currentDate := currentDate next.
	(timelineFilter includes: currentDate) ] whileFalse.

	^currentDate
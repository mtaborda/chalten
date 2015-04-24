enumerating
nextLeapYear

	| newYear |

	newYear := self next.
	[newYear isLeap] whileFalse: [newYear := newYear next].

	^newYear
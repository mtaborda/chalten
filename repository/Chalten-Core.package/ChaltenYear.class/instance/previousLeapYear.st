enumerating
previousLeapYear

	| newYear |

	newYear := self previous.
	[newYear isLeap] whileFalse: [newYear := newYear previous].

	^newYear
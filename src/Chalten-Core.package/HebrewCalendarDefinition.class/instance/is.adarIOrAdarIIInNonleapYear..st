month preconditions
is: aMonth adarIOrAdarIIInNonleapYear: aYear

	^aYear isLeap not and: [(aMonth is: AdarI) or: [aMonth is: AdarII]]
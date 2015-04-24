querying
typeFor: aNumber calendar: aCalendar

	^(self isYearNumberLeap: aNumber calendar: aCalendar)
		ifTrue: [self leapType]
		ifFalse: [self nonleapType]
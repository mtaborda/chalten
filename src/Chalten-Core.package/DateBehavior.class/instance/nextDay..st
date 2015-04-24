enumerating
nextDay: aDay

	| day |

	day := self day.
	^day = aDay
		ifTrue: [self next: self calendar numberOfDaysPerWeek]
		ifFalse: [self next: (day distanceTo: aDay)]
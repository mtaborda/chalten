enumerating
previousDay: aDay

	| day |

	day := self day.
	^day = aDay
		ifTrue: [self previous: self calendar numberOfDaysPerWeek]
		ifFalse: [self previous: (day distanceFrom: aDay)]
testing
testDo

	| timeLineFilter stream date |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addRule: (timeLineFilter dayRule: GregorianCalendar saturday).
	stream :=
		TimelineStream
			from: January first, 2004
			using: timeLineFilter.
	date := January first, 2004 previousDay: GregorianCalendar saturday.
	stream do: [:aDate |
		date := date nextDay: GregorianCalendar saturday.
		self assert: aDate = date.
		"This is ugly... but I have to doit this way because the stream has no end"
		date month = GregorianCalendar february ifTrue: [^self]]
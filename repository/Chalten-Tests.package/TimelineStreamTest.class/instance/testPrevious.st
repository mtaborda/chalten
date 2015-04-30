testing
testPrevious

	| timeLineFilter stream |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addRule: (timeLineFilter dayRule: GregorianCalendar saturday).
	stream :=
		TimelineStream
			from: January thirtyfirst, 2004
			using: timeLineFilter.
	stream skip: 5 daysMeasure.
	self assert: stream previous = (February twentyeighth, 2004)
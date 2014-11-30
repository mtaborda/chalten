test
testStream

	| timeLineFilter stream |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	stream := timeLineFilter streamFrom: January first, 2004.
	3 timesRepeat: [self assert: stream next day = GregorianCalendar saturday]
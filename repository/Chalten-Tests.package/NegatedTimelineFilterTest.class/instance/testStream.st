test streaming
testStream

	| timeLineFilter stream |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	stream := timeLineFilter negated streamFrom: January first, 2004.

	self assert: stream next = (January second, 2004).
	self assert: stream next = (January fourth, 2004).
	self assert: stream next = (January fifth, 2004).
	self assert: stream next = (January sixth, 2004).
	self assert: stream next = (January seventh, 2004).
	self assert: stream next = (January eighth, 2004).
	self assert: stream next = (January ninth, 2004).
	self assert: stream next = (January eleventh, 2004)
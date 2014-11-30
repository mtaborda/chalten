testing
testCurrent

	| timeLineFilter stream januaryThirdOf2004 januaryTenOf2004 |

	januaryThirdOf2004 := January third, 2004.
	januaryTenOf2004 := January tenth, 2004.
	timeLineFilter := TimelineFilter new.
	timeLineFilter addRule: (timeLineFilter dayRule: GregorianCalendar saturday).
	stream := TimelineStream from: januaryThirdOf2004 using: timeLineFilter.

	self assert: stream current = januaryThirdOf2004.
	self assert: stream next = januaryTenOf2004.
	self assert: stream current = januaryTenOf2004
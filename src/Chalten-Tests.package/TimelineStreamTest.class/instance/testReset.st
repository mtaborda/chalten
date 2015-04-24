testing
testReset

	| timeLineFilter stream januaryFirstOf2004 januaryThirdOf2004 januaryTenOf2004 |

	januaryFirstOf2004 := January first, 2004.
	januaryThirdOf2004 := January third, 2004.
	januaryTenOf2004 := January tenth, 2004.
	timeLineFilter := TimelineFilter new.
	timeLineFilter addRule: (timeLineFilter dayRule: GregorianCalendar saturday).
	stream := TimelineStream from: januaryFirstOf2004 using: timeLineFilter.
	self assert: stream next = januaryThirdOf2004.
	self assert: stream next = januaryTenOf2004.
	stream reset.
	self assert: stream next = januaryThirdOf2004.
	self assert: stream next = januaryTenOf2004
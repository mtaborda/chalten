test
testRemoveRule

	| timeLineFilter rule |

	timeLineFilter := TimelineFilter new.
	rule := timeLineFilter dayRule: GregorianCalendar saturday.
	timeLineFilter addRule: rule.

	self assert: (timeLineFilter includes: January third, 2004).
	self deny: (timeLineFilter includes: January fourth, 2004).
	timeLineFilter removeRule: rule.
	self deny: (timeLineFilter includes: January third, 2004)
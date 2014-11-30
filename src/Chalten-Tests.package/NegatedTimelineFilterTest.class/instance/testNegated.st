test negated calendar
testNegated

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.

	"I want to be sure that it is the same object, not just equal"
	self assert: timeLineFilter negated negated == timeLineFilter
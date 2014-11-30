A DaysOfMonthsStream is a stream of days of months.

Instance Variables
	current:	<DayOfMonth>
	start:		<DayOfMonth>
	strategy:	<MonthsOfLeapYearsForCircularStreamStrategy> | <MonthsOfNonleapYearsForCircularStreamStrategy>

current
	- The current day of month.

start
	- The staritng point in time.

strategy
	- How we advance through the stream.

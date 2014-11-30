accessing dates
lastDate

	| lastMonth |

	lastMonth := self lastMonth.
	^FixedDate monthOfYear: lastMonth dayNumber: lastMonth lastDayNumber
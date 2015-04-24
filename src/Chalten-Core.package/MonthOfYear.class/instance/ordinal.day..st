accessing days
ordinal: aNumber day: aDay

	| dates |

	dates := self firstDate to: self lastDate everyDay: aDay.
	^dates at: aNumber
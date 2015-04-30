test interval protocol
testToNegativeByDo

	| interval currentDayNumber |

	currentDayNumber := 7.
	interval := saturday to: sunday by: minusOneDay.
	interval do: [:aDay |
		self assert: aDay positionInWeek = currentDayNumber.
		currentDayNumber := currentDayNumber - 1].

	self assert: currentDayNumber = 0
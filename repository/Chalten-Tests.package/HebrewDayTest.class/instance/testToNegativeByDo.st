test interval protocol
testToNegativeByDo

	| interval currentDayNumber |

	currentDayNumber := 7.
	interval := yomShabbat to: yomRishon by: minusOneDay.
	interval do: [:day |
		self assert: day positionInWeek = currentDayNumber.
		currentDayNumber := currentDayNumber - 1].

	self assert: currentDayNumber = 0
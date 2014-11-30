test interval protocol
testToDo

	| interval currentDayNumber |

	currentDayNumber := 2.
	interval := yomSheni to: yomShabbat.
	interval do: [:day |
		self assert: day positionInWeek = currentDayNumber.
		currentDayNumber := currentDayNumber + 1].

	self assert: currentDayNumber = 8
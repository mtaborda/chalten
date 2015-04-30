test interval protocol
testToDo

	| interval currentDayNumber |

	currentDayNumber := 2.
	interval := yaumAlIthnayna to: yaumAsSabt.
	interval do: [:aDay |
		self assert: aDay positionInWeek = currentDayNumber.
		currentDayNumber := currentDayNumber + 1].

	self assert: currentDayNumber = 8
test instance creation
testSinceSunday

	| currentDay |

	currentDay := sunday.
	(zeroDays to: 6 daysMeasure) do: [:numberOfDays |
		self assert: (calendar sinceSunday: numberOfDays) = currentDay.
		currentDay := currentDay next]
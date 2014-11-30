test accessing
testNumberOfDaysSinceFirstDayOfWeek

	| currentNumberOfDays |

	currentNumberOfDays := zeroDays.
	(sunday to: saturday) do: [:aDay |
		self assert: aDay numberOfDaysSinceFirstDayOfWeek = currentNumberOfDays.
		currentNumberOfDays := currentNumberOfDays + oneDay]
test accessing
testNumberOfDaysSinceFirstDayOfWeek

	| currentNumberOfDays |

	currentNumberOfDays := zeroDays.
	(yomRishon to: yomShabbat) do: [:aDay |
		self assert: aDay numberOfDaysSinceFirstDayOfWeek = currentNumberOfDays.
		currentNumberOfDays := currentNumberOfDays + oneDay]
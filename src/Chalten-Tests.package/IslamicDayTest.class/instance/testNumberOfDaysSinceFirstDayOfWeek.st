test accessing
testNumberOfDaysSinceFirstDayOfWeek

	| currentNumberOfDays |

	currentNumberOfDays := zeroDays.
	(yaumAlAhad to: yaumAsSabt) do: [:aDay |
		self assert: aDay numberOfDaysSinceFirstDayOfWeek = currentNumberOfDays.
		currentNumberOfDays := currentNumberOfDays + oneDay]
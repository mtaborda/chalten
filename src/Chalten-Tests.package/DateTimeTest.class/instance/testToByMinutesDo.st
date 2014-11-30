test interval protocol
testToByMinutesDo

	| interval minutes |

	interval := januaryFirstOf2004 to: januaryThirdOf2004 by: 1 minuteMeasure.
	minutes := interval inject: 0 into: [ :accumulatedMinutes :dateTime | accumulatedMinutes + 1 ].

	self assert: (minutes - 1) minutesMeasure = 48 hoursMeasure
test interval protocol
testToByDo

	| interval date hours |

	interval := januaryFirstOf2004
		to: januarySecondOf2004On23Hours59Minutes59Seconds
		by: 1 hourMeasure.
	date := January first, 2004.
	hours := 0.
	interval do: [ :dateTime |
		self assert: dateTime date = date.
		self assert: dateTime timeOfDay = (TimeOfDay hours: hours).
		hours := hours + 1.
		hours = 24
			ifTrue: [
				date := date next.
				hours := 0 ]].
	self assert: date = (January third, 2004).
	self assert: hours = 0
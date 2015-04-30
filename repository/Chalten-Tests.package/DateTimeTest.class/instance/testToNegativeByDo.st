test interval protocol
testToNegativeByDo

	| interval date hours |

	interval := januarySecondOf2004On23Hours to: januaryFirstOf2004On03Hours by: -2 hoursMeasure.
	date := January second, 2004.
	hours := 23.
	interval do: [ :dateTime |
		self assert: dateTime date = date.
		self assert: dateTime timeOfDay = (TimeOfDay hours: hours).
		hours := hours - 2.
		hours = -1
			ifTrue: [
				date := date previous.
				hours := 23 ]].
	self assert: date = (January first, 2004).
	self assert: hours = 1
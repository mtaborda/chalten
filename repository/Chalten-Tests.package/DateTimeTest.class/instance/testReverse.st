test interval protocol
testReverse

	| collection date hours |

	collection := (januaryFirstOf2004 to: januarySecondOf2004On23Hours by: 2 hoursMeasure) reverse.
	date := January second, 2004.
	hours := 22.
	collection do: [:dateTime |
		self assert: dateTime date = date.
		self assert: dateTime timeOfDay = (TimeOfDay hours: hours).
		hours := hours - 2.
		hours = -2
			ifTrue: [
				date := date previous.
				hours := 22]].
	self assert: date = (December thirtyfirst, 2003).
	self assert: hours = 22
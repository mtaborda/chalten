days accessing
dayNamed: aString

	| lowercaseString |

	lowercaseString := aString asLowercase.
	^self days
		detect: [ :day | day name asLowercase = lowercaseString ]
		ifNone: [ InvalidDayNameException signalName: aString ]
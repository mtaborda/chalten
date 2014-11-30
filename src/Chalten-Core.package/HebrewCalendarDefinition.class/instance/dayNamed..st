days accessing
dayNamed: aString

	| lowercaseString |

	lowercaseString := aString asLowercase.
	^days detect: [:day | day name asLowercase = lowercaseString]
		ifNone: [InvalidDayNameException signalName: aString]
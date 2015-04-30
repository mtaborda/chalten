enumerating
nextIn: aTimeZone

	^self
		next: aTimeZone offset - zone offset
		in: aTimeZone
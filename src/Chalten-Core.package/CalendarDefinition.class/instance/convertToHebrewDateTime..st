*Chalten-Core-HebrewModel
convertToHebrewDateTime: aDateTime

	^DateTime
		date: (self convertToHebrewDate: aDateTime date)
		timeOfDay: aDateTime timeOfDay
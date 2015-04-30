*Chalten-Core-IslamicModel
convertToIslamicDateTime: aDateTime

	^DateTime
		date: (self convertToIslamicDate: aDateTime date)
		timeOfDay: aDateTime timeOfDay
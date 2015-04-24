*Chalten-Core-GregorianModel
convertToGregorianDateTime: aDateTime

	^DateTime
		date: (self convertToGregorianDate: aDateTime date)
		timeOfDay: aDateTime timeOfDay
*Chalten-Core-JulianModel
convertToJulianDateTime: aDateTime

	^DateTime
		date: (self convertToJulianDate: aDateTime date)
		timeOfDay: aDateTime timeOfDay
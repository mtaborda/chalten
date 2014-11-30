test months of year
testMonthsOfYearsAccessing

	| currentYear |

	currentYear := calendar currentYear.
	self assert: currentYear january = (January ofYear: currentYear).
	self assert: currentYear february = (February ofYear: currentYear).
	self assert: currentYear march = (March ofYear: currentYear).
	self assert: currentYear april = (April ofYear: currentYear).
	self assert: currentYear may = (May ofYear: currentYear).
	self assert: currentYear june = (June ofYear: currentYear).
	self assert: currentYear july = (July ofYear: currentYear).
	self assert: currentYear august = (August ofYear: currentYear).
	self assert: currentYear september = (September ofYear: currentYear).
	self assert: currentYear october = (October ofYear: currentYear).
	self assert: currentYear november = (November ofYear: currentYear).
	self assert: currentYear december = (December ofYear: currentYear)
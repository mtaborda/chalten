test months of year
testMonthsOfYearsAccessing

	| currentYear |

	currentYear := calendar currentYear.
	self assert: currentYear january = (JulianJanuary ofYear: currentYear).
	self assert: currentYear february = (JulianFebruary ofYear: currentYear).
	self assert: currentYear march = (JulianMarch ofYear: currentYear).
	self assert: currentYear april = (JulianApril ofYear: currentYear).
	self assert: currentYear may = (JulianMay ofYear: currentYear).
	self assert: currentYear june = (JulianJune ofYear: currentYear).
	self assert: currentYear july = (JulianJuly ofYear: currentYear).
	self assert: currentYear august = (JulianAugust ofYear: currentYear).
	self assert: currentYear september = (JulianSeptember ofYear: currentYear).
	self assert: currentYear october = (JulianOctober ofYear: currentYear).
	self assert: currentYear november = (JulianNovember ofYear: currentYear).
	self assert: currentYear december = (JulianDecember ofYear: currentYear)
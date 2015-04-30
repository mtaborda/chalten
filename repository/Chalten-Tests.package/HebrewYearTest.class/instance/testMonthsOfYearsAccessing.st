test month of year
testMonthsOfYearsAccessing
	| nonleapYear leapYear |
	nonleapYear := 5767 asHebrewYear.
	leapYear := 5768 asHebrewYear.
	self assert: nonleapYear nisan = (Nisan ofYear: nonleapYear).
	self assert: nonleapYear iyyar = (Iyyar ofYear: nonleapYear).
	self assert: nonleapYear sivan = (Sivan ofYear: nonleapYear).
	self assert: nonleapYear tammuz = (Tammuz ofYear: nonleapYear).
	self assert: nonleapYear av = (Av ofYear: nonleapYear).
	self assert: nonleapYear elul = (Elul ofYear: nonleapYear).
	self assert: nonleapYear tishri = (Tishri ofYear: nonleapYear).
	self assert: nonleapYear marheshvan = (Marheshvan ofYear: nonleapYear).
	self assert: nonleapYear kislev = (Kislev ofYear: nonleapYear).
	self assert: nonleapYear tevet = (Tevet ofYear: nonleapYear).
	self assert: nonleapYear shevat = (Shevat ofYear: nonleapYear).
	self assert: nonleapYear adar = (Adar ofYear: nonleapYear).
	self assert: leapYear adarI = (AdarI ofYear: leapYear).
	self assert: leapYear adarII = (AdarII ofYear: leapYear)
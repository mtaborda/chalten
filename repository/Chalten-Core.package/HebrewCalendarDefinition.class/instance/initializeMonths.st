initialization
initializeMonths
	"The hebrew year consists of 12 months in a common year and 13 in a leap year:
		(1) Nisan 							30 days
		(2) Iyyar 							29 days
		(3) Sivan 							30 days
		(4) Tammuz 						29 days
		(5) Av 								30 days
		(6) Elul 							29 days
		(7) Tishri 							30 days
		(8) Marheshvan 					29 or 30 days
		(9) Kislev 							29 or 30 days
		(10) Tevet 							29 days
		(11) Shevat 							30 days
		{(12) Adar I 						30 days}
		(12) {(13)} Adar {II} 					29 days
	The leap-year structure is given in curly brackets -in leap year there is an interpolated twelfth month of 30 days
	called Adar I to distinguish it from the final month, Adar II. The length of the eigth and ninth month varies from
	year to year. Our ordering of the hebrew months follows biblical conention (Leviticus 23:5) in witch (what is now called)
	Nisan is the first month. This numbering causes the Hebrew New Year (Rosh ha-Shanah) to begin on the first of tishri,
	wich by our ordering is the seventh month -but this too agrees with biblical usage (Leviticus 23:24).	
	- Extracted from 'Calendrical Calculations, The Millennium Edition'; page 96."

	self initializeMonthsForNonleapYears.
	self initializeMonthsForLeapYears
initialization
initializeMonths
	"This calendar is based on a 365-day common year divided into 12 months of lengths 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30 and 31 days, and on 366 days in leap years,
	the extra day being added to make the second month 29 days long:
		(1) January 		31 days
		(2) February 	28 {29} days
		(3) March 		31 days
		(4) April 		30 days
		(5) May 		31 days
		(6) June 		30 days
		(7) July 			31 days
		(8) August 		31 days
		(9) September 	30 days
		(10) October 	31 days
		(11) Novmeber 	30 days
		(12) December 31 days
	The leap-year strcture is given in curly brackets. A year is leap if it is divisble by 4"

	months := Array new: self amountOfMonthsPerYear.
	super initializeMonths
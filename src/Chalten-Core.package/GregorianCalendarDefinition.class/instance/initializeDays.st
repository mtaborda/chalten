initialization
initializeDays
	"Days begins at midnight. The week begins on sunday The days are named:
		Sunday
		Monday
		Tuesday
		Wednesday
		Thursday
		Friday
		Saturday"
		
	days := Array new: self amountOfDaysPerWeek.
	super initializeDays
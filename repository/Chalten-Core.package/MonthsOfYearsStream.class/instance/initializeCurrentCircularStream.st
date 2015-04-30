initialization
initializeCurrentCircularStream

	currentCircularStream := CircularReadStream on: current year arrayOfMonths moving: TimeUnits month startingCircleAt: current calendar firstMonth.
	currentCircularStream upTo: current month
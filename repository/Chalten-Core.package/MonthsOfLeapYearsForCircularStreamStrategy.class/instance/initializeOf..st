initialization
initializeOf: aCalendar

	stream := CircularReadStream on: aCalendar monthsForLeapYears moving: TimeUnits month
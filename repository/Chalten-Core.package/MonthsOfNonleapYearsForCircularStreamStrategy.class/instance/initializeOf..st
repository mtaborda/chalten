initialization
initializeOf: aCalendar

	stream := CircularReadStream on: aCalendar monthsForNonleapYears moving: TimeUnits month
test interval protocol
testToByDo

	| daysTo januaryFirst dayOfMonth |

	daysTo := 0.
	januaryFirst := DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar.
	dayOfMonth := januaryFirst.
	(januaryFirst to: (DayOfMonth monthNumber: 12 dayNumber: 31 calendar: calendar)) do: [
		:aDayOfMonth |
		self assert: aDayOfMonth = dayOfMonth.
		self assert: (januaryFirst distanceTo: aDayOfMonth) amount = daysTo.
		dayOfMonth := dayOfMonth next.
		daysTo := daysTo + 1].
	self assert: daysTo = 365
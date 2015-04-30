test interval protocol
testToByDo

	| daysTo nisanFirst dayOfMonth |

	daysTo := 0.
	nisanFirst := Nisan first.
	dayOfMonth := nisanFirst.
	(nisanFirst to: Adar twentyninth) do: [:aDayOfMonth |
		self assert: aDayOfMonth = dayOfMonth.
		self assert: (nisanFirst distanceTo: aDayOfMonth) amount = daysTo.
		dayOfMonth := dayOfMonth next.
		daysTo := daysTo + 1].
	self assert: daysTo = 355
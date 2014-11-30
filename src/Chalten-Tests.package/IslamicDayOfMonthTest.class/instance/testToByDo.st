test interval protocol
testToByDo

	| daysTo muharramFirst dayOfMonth |

	daysTo := 0.
	muharramFirst := Muharram first.
	dayOfMonth := muharramFirst.
	(muharramFirst to: DhuAlHijja twentyninth) do: [:aDayOfMonth |
		self assert: aDayOfMonth = dayOfMonth.
		self assert: (muharramFirst distanceTo: aDayOfMonth) amount = daysTo.
		dayOfMonth := dayOfMonth next.
		daysTo := daysTo + 1].
	self assert: daysTo = 354
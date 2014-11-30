test interval protocol
testToByDo

	| daysTo nisanFirst5767 |

	daysTo := 0.
	nisanFirst5767 := Nisan first, 5767.
	(nisanFirst5767 to: Nisan first, 5768 by: self twoDays) do: [:date |
		self assert: (nisanFirst5767 distanceTo: date) amount = daysTo.
		daysTo := daysTo + 2].
	self assert: daysTo = 384
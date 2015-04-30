test interval protocol
testToByDo

	| daysTo januaryFirst2007 |

	daysTo := 0.
	januaryFirst2007 := JulianJanuary first, 2007.
	(januaryFirst2007 to: JulianJanuary first, 2008 by: self twoDays) do: [:date |
		self assert: (januaryFirst2007 distanceTo: date) amount = daysTo.
		daysTo := daysTo + 2].
	self assert: daysTo = 366
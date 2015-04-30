test interval protocol
testToByDo

	| daysTo muharramFirst1428 |

	daysTo := 0.
	muharramFirst1428 := Muharram first, 1428.
	(muharramFirst1428 to: Muharram first, 1429 by: self twoDays) do: [:date |
		self assert: (muharramFirst1428 distanceTo: date) amount = daysTo.
		daysTo := daysTo + 2].
	self assert: daysTo = 356
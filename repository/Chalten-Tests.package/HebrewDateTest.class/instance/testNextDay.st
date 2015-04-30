test enumerating
testNextDay

	| yomRishon |

	yomRishon := Nisan sixth, 5767.
	self assert: (yomRishon nextDay: calendar yomRishon) = (Nisan thirteenth, 5767).
	self assert: (yomRishon nextDay: calendar yomSheni) = (Nisan seventh, 5767).
	self assert: (yomRishon nextDay: calendar yomShelishi) = (Nisan eighth, 5767).
	self assert: (yomRishon nextDay: calendar yomRevii) = (Nisan ninth, 5767).
	self assert: (yomRishon nextDay: calendar yomHamishi) = (Nisan tenth, 5767).
	self assert: (yomRishon nextDay: calendar yomShishi) = (Nisan eleventh, 5767).
	self assert: (yomRishon nextDay: calendar yomShabbat) = (Nisan twelfth, 5767)
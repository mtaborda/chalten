test enumerating
testPreviousDay

	| yomRishon |

	yomRishon := Nisan sixth, 5767.
	self assert: (yomRishon previousDay: calendar yomSheni) = (Adar twentyninth, 5767).
	self assert: (yomRishon previousDay: calendar yomShelishi) = (Nisan first, 5767).
	self assert: (yomRishon previousDay: calendar yomRevii) = (Nisan second, 5767).
	self assert: (yomRishon previousDay: calendar yomHamishi) = (Nisan third, 5767).
	self assert: (yomRishon previousDay: calendar yomShishi) = (Nisan fourth, 5767).
	self assert: (yomRishon previousDay: calendar yomShabbat) = (Nisan fifth, 5767).
	self assert: (yomRishon previousDay: calendar yomRishon) = (Adar twentyeighth, 5767)
test testing
testIsLastDayOfMonth

	self assert: (Nisan thirtieth, 5767) isLastDayOfMonth.
	self assert: (Iyyar twentyninth, 5767) isLastDayOfMonth.
	self assert: (Sivan thirtieth, 5767) isLastDayOfMonth.
	self assert: (Tammuz twentyninth, 5767) isLastDayOfMonth.
	self assert: (Av thirtieth, 5767) isLastDayOfMonth.
	self assert: (Elul twentyninth, 5767) isLastDayOfMonth.
	self assert: (Tishri thirtieth, 5767) isLastDayOfMonth.
	self assert: (Marheshvan thirtieth, 5767) isLastDayOfMonth.
	self assert: (Kislev thirtieth, 5767) isLastDayOfMonth.
	self assert: (Tevet twentyninth, 5767) isLastDayOfMonth.
	self assert: (Shevat thirtieth, 5767) isLastDayOfMonth.
	self assert: (Adar twentyninth, 5767) isLastDayOfMonth.
	self assert: (AdarI thirtieth, 5768) isLastDayOfMonth.
	self assert: (AdarII twentyninth, 5768) isLastDayOfMonth


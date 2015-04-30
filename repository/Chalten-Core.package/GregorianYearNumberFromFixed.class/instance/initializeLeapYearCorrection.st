initialization - private
initializeLeapYearCorrection

	leapYearCorrection :=
		(daysInCyclesOf100Years = 4 or: [daysInOneRegularYear = 4]) ifTrue: [0] ifFalse: [1]
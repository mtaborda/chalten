initialization - private
initializeDaysInCycles

	cycleOf400Years := 146097.
	cycleOf100Years := 36524.
	cycleOf4Years := 1461.
	oneRegularYear := 365.
	daysMinusEpoch := numberOfDays - calendar epoch.
	self initializeDaysInCyclesOf400Years.
	self initializeDaysInCyclesOf100Years.
	self initializeDaysInCyclesOf4Years.
	self initializeDaysInOneRegularYear
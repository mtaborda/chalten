test interval protocol
testToBy
	| interval |
	interval := 5767 asHebrewYear to: 5770 asHebrewYear by: twoYears.
	self assert: interval from = 5767 asHebrewYear.
	self assert: interval to = 5770 asHebrewYear.
	self assert: interval by = twoYears
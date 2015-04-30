rules - adding specific rules
addRules: aRuleCollection during: anIntervalOfDays

	aRuleCollection do: [:each | self addRule: each during: anIntervalOfDays]
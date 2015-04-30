querying
distanceFrom: aMonthOfYear to: anotherMonthOfYear
	| months |
	months := 0 monthsMeasure.
	[ current = anotherMonthOfYear ]
		whileFalse: [ 
			currentCircularStream
				ifAtEndDo: [ 
					current := currentCircularStream next ofYear: current year next.
					self initializeCurrentCircularStream ]
				else: [ current := currentCircularStream next ofYear: current year ].
			months := months + 1 monthMeasure ].
	^ months
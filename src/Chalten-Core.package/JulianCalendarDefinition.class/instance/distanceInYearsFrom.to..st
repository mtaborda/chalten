year querying
distanceInYearsFrom: aFromYear to: aToYear

	| difference |

	difference := aToYear number - aFromYear number.
	aFromYear number < 0
		ifTrue: [aToYear number > 0 ifTrue: [difference := difference - 1]]
		ifFalse: [aToYear number < 0 ifTrue: [difference := difference + 1]].
	^difference yearsMeasure
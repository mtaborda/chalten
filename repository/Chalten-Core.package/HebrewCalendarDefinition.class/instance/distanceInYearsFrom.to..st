year querying
distanceInYearsFrom: aFromYear to: aToYear

	| difference |

	difference := aToYear number - aFromYear number.
	^difference yearsMeasure
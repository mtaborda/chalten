enumerating
stepsFrom: fromPointInTime to: toPointInTime by: aDistance

	| fromToDistance |

	fromToDistance := fromPointInTime distanceTo: toPointInTime.
	^fromToDistance isFixed
		ifTrue: [ fromToDistance / aDistance ]
		ifFalse: [ fromToDistance amount ]
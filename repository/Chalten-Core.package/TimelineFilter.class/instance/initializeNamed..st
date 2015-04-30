initialization
initializeNamed: aName

	name := aName.
	inclusionSet := Set new.
	negatedTimeLineFilter := NegatedTimelineFilter for: self
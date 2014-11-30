day creation - private
createYomShabbat
	^ Day 
		named: self yomShabbatName
		positionInWeek: self yomShabbatPositionInWeek
		calendar: self
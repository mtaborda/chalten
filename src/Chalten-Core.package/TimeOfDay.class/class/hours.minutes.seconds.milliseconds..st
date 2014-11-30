instance creation
hours: anHours minutes: aMinutes seconds: aSeconds milliseconds: aMilliseconds
	^ self
		timeFromMidnight:
			anHours hoursMeasure + aMinutes minutesMeasure + aSeconds secondsMeasure + aMilliseconds millisecondsMeasure
enumerating
next: aTimespan

	| stream |
	
	stream := TimelineStream from: aTimespan from using: self.
	stream skip: aTimespan duration.
	^stream current
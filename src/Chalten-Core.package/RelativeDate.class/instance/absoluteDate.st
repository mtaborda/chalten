accessing
absoluteDate
	"It is necessary to send #value for not assume that the dates of the time line filter are absolute,
	and also it is necessary to send #value to the timespan in order to obtain a relative timespan"
	
	^(timelineFilter next: timespan value) value
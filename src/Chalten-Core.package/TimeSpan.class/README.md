A TimeSpan is a timeline segments.

A segment begins on a specific point of the timeline and has certain duration and direction expressed as a measure. The starting point of a timespan can be a point at any of the timeline resolutions. The duration and direction is given by a time measure that should be convertible to the unit of the scale the starting point belongs to. If the measure is positive, the direction is towards the end of time, if the measure is negative, the direction is towards the beginning of time.

Timespans are useful to represent relative time entities where the beginning of such an entity is known, but the end is not exactly known or can change. Examples of such entities are“I'll see you in 10 working days from today”or it happened 7 months before January.

Instance Variables
	duration:	<Measure>
	from:		<PointInTime>

duration
	- A time measure.

from
	- The starting point in time.

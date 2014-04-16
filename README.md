Chaltén
=======
##Why a new model of Dates?
This model was created due to the Smalltalk-80's model problems. That model does not provide good solutions to all possible time related problems mainly because:
It lacks proper abstractions of some important time domain entities (i.e., month, day)
Time objects are not immutable (i.e., Time) therefore, they do not properly model time entities, Time Entities Immutability and Validity.
The ANSI Smalltalk model adds some abstractions but it is based on the Smalltalk one and have the same problems.
The Chronology package has some issues also.

##What's the metaphor behind the model?
We used a metaphor to understand the time domain. In this metaphor, time entities are points in a line, a line that represents the passing time. The observers of that line can zoom in and out the points it contains. When the observer zooms in he sees smaller points (i.e., dates), when the observer zooms out he sees bigger points (i.e., years). We say that the timeline has different scales or that timelines of different scale can represent the passing time.
###Let’s see an example.
A year represents a point in time but with less resolution than a date. If the year is zoomed in, new points are observed; those points are the months of that year. If one of those points is picked and zoomed in, the points representing the dates of that month are obtained. If one of this dates is selected and zoomed in, points representing the hour of that date are obtained. Let’s do it with concrete entities. If the year 2014 is selected and zoomed in, months from January of 2014 to December of 2014 appear. If January of 2014 is zoomed in, dates from January 1st of 2014 to January 31st of 2014 are seen. If January 1st of 2014 is zoomed in, the entities January 1st of 2014 at 00: 00: 00 to January 1st of 2014 at 23:59:59 are seen.

##What's the behavior that the model provides?
Not only the metaphor helped us to understand the problem and create a model based on it, but it also allowed us to easily define the expected behaviour of the model, such as:
- Determine which point comes before or after another (ordering of time points along the time line).
- Go from one point in the timeline to another.
- Obtain the distance between two time points.
- Represent segments of the timeline of any scale.
- Switch from one scale to another.
- Represent intervals between points.
- Filter the timeline with certain rules.
- Work with dates expresed in four calendars: Gregorian, Julian, Islamic and Hebrew.
- Represent times of day according to differents time zones.
 
##Why dates are inmutable and validated when they are created?
Something we have noticed about time entities is that they are immutable; they do not change, they are immutable like the numbers. A given date such as January 1st of 2014 should not allow its year, month or day to be changed. Therefore, the abstractions we use to model the time domain entities are immutable, they behave like “value objects”.
Immutable objects allow us to have a simpler model and not to worry about inconsistent objects, invalid modifications or invariance invalidity during a certain time.
The model also verifies, when creating an object, if the new instance will be valid. If that is true, the object is created, otherwise an exception is signalled. Therefore, the code that verifies if an object is valid is located in one place and ensures that no invalid time objects exist.

##How do I move trought the different time resolutions?
As we said before, a year can be seen as a point in the time line at a year resolution. Because the resolution is a year, that point contains other points of higher resolution such as months of a year, dates and time in a certain date. The model provides protocol to easily move between points of different resolutions (i.e., going from a year to the dates it contains or from a date to its year). Moving to points of smaller resolution looks natural (i.e., going from a date to its year) but moving to points of higher resolution is not so commonly provided on this type of models (i.e., going from a year to its dates). Messages to go from points of one scale to another are provided on each abstraction.
  
    year2014 := GregorianCalendar newYearNumber: 2014.
    
    “Going from years to months of year”
    year2014 firstMonth.              “Returns January of 2014”
    year2014 lastMonth.               “Returns December of 2014”
    year2014 months.                  “Returns all the months of year 2014”
    
    “Going from years to dates”
    year2014 firstDate.               “Returns January 1st, 2014”
    year2014 lastDate.                “Returns December 31st, 2014”
    year2014 dates.                   “Returns the 365 dates of the year 2014”
    year2014 firstDay.                “Returns Wednesday”
    year2014 lastDay.                 “It is also a Wednesday”
    
    “Going from years to date times”
    year2014 firstDate atMidnight.    “Returns January 1st, 2005 00:00:00”
    year2014 lastDate lastTimeOfDay.  “Returns December 31st, 2005 23:59:59”

#Are time entities comparable?
All the time point abstractions respond to the magnitude protocol with messages such as #<, #<=, #>, #>=, #min:, #max:, #between: and: among others. Because they are points in the time line of a certain resolution, they can be compared to see which one is closer or farther from the beginning of the time line. A total order can be defined for them.

    (GregorianCalendar newYearNumber: 2014) < (GregorianCalendar newYearNumber: 2015).  “Comparing years”
    (Decempber of: 2014) < (July of: 2015).                                             “Comparing months of year”
    GregorianCalendar today < GregorianCalendar tomorrow.                               “Comparing dates”
    GregorianCalendar now < GregorianCalendar now next.                                 “Comparing datetimes”

Not only points on the time line can be compared. Instances of Day, DayOfMonth and ChaltenMonth can also be compared. When comparing days of the week the model assumes Sunday is the first day of the week but this can be changed to any other day such as Monday. January 1st is always the first gregorian DayOfMonth and January is always the first gregorian ChaltenMonth.

    Monday < Tuesday.                     “Comparing days”
    January < December.                   “Comparing months”
    January first < December twentyFifth. “Comparing days of month”

##How do I get the distance beetween two time entities?
Messages #distanceTo: aPointInTime and #distanceFrom: aPointInTime are used to obtain the distance between two points.
The same messages are used polymorphically for years, months of a year, dates, etc.
The model also provides behavior to obtain the distance between time entities like days, months and days of months.

    (GregorianCalendar newYearNumber: 2014) distanceTo: (GregorianCalendar newYearNumber: 2016). “Returns 2 years”
    (GregorianCalendar newYearNumber: 2014) distanceTo: (GregorianCalendar newYearNumber: 2010). “Returns -4 years”
    
    January first, 2014 distanceTo: January tenth, 2014.   “Returns 10 days”
    January first, 2014 distanceFrom: January tenth, 2014. ”Returns -10 days”

##What are the units that the model provides?
This model uses Aconcagua (http://github.com/mtaborda/aconcagua) to manage measures and time units.
The provided units are: month, year, decade, century, millennium, millisecond, second, minute, hour, day, week
New units can be created as needed.

##How do I move from one point to another?
The model provides the #next, #next: aTimeMeasure, #previous and #previous: aTimeMeasure messages to move certain distance to and from a given point. #next and #previous messages assume that the distance to move is equal to the quantum of the timeline the point receiving the message belongs to. If the point is a year, the quantum is 1 year, if the point is a month of a year the quantum is 1 month, if the point is a date the quantum is 1 day and if the point is a datetime the quantum is 1 millisecond.
Moving certain distance to or from a point expects a measure of time as parameter because the distance between two points is expressed as a measure of time.

    (GregorianCalendar newYearNumber: 2014) next.              “Returns the gregorian year number 2015”
    (GregorianCalendar newYearNumber: 2014) next: 1 year.      “Returns the gregorian year number 2015”
    (GregorianCalendar newYearNumber: 2014) next: 12 months.   “Returns the gregorian year number 2015”
    (GregorianCalendar newYearNumber: 2014) next: 10 years.    “Returns the gregorian year number 2024”
    (GregorianCalendar newYearNumber: 2014) previous: 5 years. “Returns the gregorian year number 2009”

##Is there a way to represent timeline segments?
The class TimeSpan represents timeline segments. A segment begins on a specific point of the timeline and has certain duration and direction expressed as a measure. The starting point of a time span can be a point at any of the timeline resolutions. The duration and direction is given by a time measure that should be convertible to the unit of the scale the starting point belongs to. If the measure is positive, the direction is towards the end of time, if the measure is negative, the direction is towards the beginning of time.
Timespans are useful to represent relative time entities where the beginning of such an entity is known, but the end is not exactly known or can change. Examples of such entities are “I’ll see you in 10 working days from today” or “it happened 7 months before January”. Timespans are important to represent relative time entities such as relative dates which are explain further on.
Timespans can also be used with time objects that are not part of the timeline but have an order such as days, months and day of months.

    “Creates a timespan from January 1st, 2014 with 72 hours of duration”
    timespan := TimeSpan from: (January first, 2014) duration: 72 hours.
    timespan to. “Returns January 4th, 2005”

    “Creates a timespan from year 2014 with a duration of 4 years”
    timespan := TimeSpan from: (GregorianCalendar newYearNumber: 2014) duration: 4 years.
    timespan to. “Returns year 2018”

    “Creates a timespan from now with a length of 3 weeks toward the beginning of time”
    timespan := TimeSpan from: GregorianCalendar now duration: -3 weeks.
    timespan to. “If now is January 1st, 2014 at 10 AM, returns December 11th, year 2013 at 10 AM”
    
    (TimeSpan from: GregorianCalendar today duration: 3 days) to. “Returns Thursday if today is Monday”
    (TimeSpan from: GregorianCalendar currentMonth duration: 6 months) to. “Returns July if current is January”

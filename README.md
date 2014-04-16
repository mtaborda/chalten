chalten
=======
##Why a new model of Dates?
This model was created due to the Smalltalk-80's model problems. That model does not provide good solutions to all possible time related problems mainly because:
It lacks proper abstractions of some important time domain entities (i.e., month, day)
Time objects are not immutable (i.e., Time) therefore, they do not properly model time entities as we show in section 4.1, Time Entities Immutability and Validity.
The ANSI Smalltalk model adds some abstractions but it is based on the Smalltalk one and have the same problems.
The Chronology package has some issues also.

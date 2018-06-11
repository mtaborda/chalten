"
An InclusionRule is used to determinate when certain date is included or not in some TimelineFilter.

"
Class {
	#name : #InclusionRule,
	#superclass : #Object,
	#category : 'Chalten-Core-FilterModel'
}

{ #category : #querying }
InclusionRule >> includes: anObject [

	self subclassResponsibility
]

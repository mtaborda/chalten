"
This class is used to load Chalten from github repository
"
Class {
	#name : #BaselineOfChalten,
	#superclass : #BaselineOf,
	#category : 'BaselineOfChalten'
}

{ #category : #baselines }
BaselineOfChalten >> baseline: spec [

	<baseline>
	spec
		for: #common
		do: [ 
			self setUpDependencies: spec.
			spec
				package: 'Chalten-Core' with: [ spec requires: 'Aconcagua' ];
				package: 'Chalten-Tests' with: [ spec requires: 'Chalten-Core' ].
			spec
				group: 'Deployment' with: #('Chalten-Core');
				group: 'Development' with: #('Chalten-Tests');
				group: 'default' with: #('Development').
			spec postLoadDoIt: #postLoadInitialization ]
]

{ #category : #'post load' }
BaselineOfChalten >> postLoadInitialization [

	ChaltenEnvironmentBehavior initializeAfterLoad.
	TimeUnitsGlobals initializeAfterLoad.
	CalendarDefinition allSubclassesDo: [ :each | each subclasses
		ifEmpty: [ each initializeAfterLoad ]].
	TimeOfDay initializeAfterLoad.
	TimeZonesGlobals initializeAfterLoad
]

{ #category : #baselines }
BaselineOfChalten >> setUpDependencies: aSpec [

	aSpec
		baseline: 'Aconcagua'
		with: [ aSpec
				repository: 'github://ba-st/Aconcagua:master/repository';
				loads: #('Deployment') ]
]

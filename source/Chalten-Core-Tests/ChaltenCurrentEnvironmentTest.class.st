Class {
	#name : 'ChaltenCurrentEnvironmentTest',
	#superclass : 'TestCase',
	#category : 'Chalten-Core-Tests',
	#package : 'Chalten-Core-Tests'
}

{ #category : 'test testing' }
ChaltenCurrentEnvironmentTest >> testIsForCurrentPlatform [

	self assert: ChaltenEnvironment class isForCurrentPlatform
]

{ #category : 'test accessing time' }
ChaltenCurrentEnvironmentTest >> testLocalTimeOffset [

	self assert: ChaltenEnvironment localTimeOffset = (ChaltenEnvironment primOffset // 60)
]

{ #category : 'test accessing time' }
ChaltenCurrentEnvironmentTest >> testMicrosecondsClock [

	| first second |
	first := ChaltenEnvironment microsecondsClock.
	(Delay forMilliseconds: 1) wait.
	second := ChaltenEnvironment microsecondsClock.
	self assert: first = (second - (second -first))
]

{ #category : 'test accessing time' }
ChaltenCurrentEnvironmentTest >> testMillisecondsClock [

	| first second |
	first := ChaltenEnvironment millisecondsClock.
	(Delay forMilliseconds: 1) wait.
	second := ChaltenEnvironment millisecondsClock.
	self assert: first = (second - (second -first))
]

{ #category : 'test accessing time' }
ChaltenCurrentEnvironmentTest >> testSecondsClock [

	| first second |
	first := ChaltenEnvironment secondsClock.
	(Delay forMilliseconds: 1) wait.
	second := ChaltenEnvironment secondsClock.
	self assert: first = (second - (second -first))
]

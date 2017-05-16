baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [ 
		spec blessing: #baseline.
		spec
			package: 'Chalten-Core' with: [ spec requires: 'Aconcagua' ];
			package: 'Chalten-Tests' with: [ spec requires: 'Chalten-Core' ].
		spec
			group: 'default' with: #('Core' 'Tests');
			group: 'Core' with: #('Chalten-Core');
			group: 'Tests' with: #('Chalten-Tests').
		spec postLoadDoIt: #postLoadInitialization ].
	
	spec for: #'pharo4.x' do: [
		spec repository: ((repositories at: #pharo40) at: #chalten).
		self aconcagua: spec for: #pharo40 ].
	
	spec for: #'pharo5.x' do: [
		spec repository: ((repositories at: #pharo50) at: #chalten).
		self aconcagua: spec for: #pharo50 ].
	
	spec for: #'pharo6.x' do: [
		spec repository: ((repositories at: #pharo60) at: #chalten).
		self aconcagua: spec for: #pharo60 ]

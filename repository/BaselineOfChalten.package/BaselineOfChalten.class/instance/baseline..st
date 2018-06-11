baselines
baseline: spec

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
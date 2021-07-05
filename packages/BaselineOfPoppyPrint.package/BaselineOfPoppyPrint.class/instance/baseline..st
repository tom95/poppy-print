baseline
baseline: spec
	<baseline>

	spec for: #common do: [
		spec
			package: 'PoppyPrint-Tests' with: [spec requires: 'default'];
			package: 'PoppyPrint-Tests' with: [spec requires: 'PoppyPrint-Core'].
		spec postLoadDoIt: #postLoadCore]
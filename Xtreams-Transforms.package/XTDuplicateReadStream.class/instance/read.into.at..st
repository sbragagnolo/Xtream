accessing
read: anInteger into: aSequenceableCollection at: startIndex

	[	source read: anInteger into: aSequenceableCollection at: startIndex.
	] on: Incomplete do: [ :incomplete |
		duplicate write: incomplete count from: aSequenceableCollection at: startIndex.
		incomplete pass ].
	duplicate write: anInteger from: aSequenceableCollection at: startIndex
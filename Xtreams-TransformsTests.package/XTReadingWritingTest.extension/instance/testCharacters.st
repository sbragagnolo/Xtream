*Xtreams-TransformsTests-encoding
testCharacters
	(self output encoding: #utf8)
		setLineEndTransparent;
		backspace; bell; cr; delete; ff; lf; q; qq; space; tab; vtab; escape;
		close.
	self assert: (self input read: 12) = #[8 7 13 127 12 10 39 34 32 9 11 27]
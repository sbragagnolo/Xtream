tests - enumeration
testSelect

	| data result |
	data := ByteArray withAll: (0 to: 15).
	self output write: data; close.
	result := self input select: [ :e | e odd ].
	self assert: result = (data select: [ :e | e odd ]).
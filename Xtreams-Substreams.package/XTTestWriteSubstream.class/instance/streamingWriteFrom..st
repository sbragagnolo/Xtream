private
streamingWriteFrom: aReadStream
	| object count |
	substreamAtEnd ifTrue: [Incomplete zero raise].
	count := 0.
	^[[substreamAtEnd not] whileTrue:
		[object := aReadStream get.
		((substreamAtEnd := test value: object) and: [inclusive not]) ifFalse: [destination put: object. count := count + 1]].
		count
	] on: Incomplete do: [:incomplete | destinationAtEnd := substreamAtEnd := true. count ]
tests
testIncompleteOnClose

	| stream contents |
	stream := ['abcd' reading closing: [Incomplete zero raise]] reading stitching.
	contents := stream rest.
	self assert: contents = 'abcd'.

	stream := ['abcd' reading closing: [Incomplete zero raise]] reading stitching.
	contents := 'WRONG'.
	[stream read: 10] on: Incomplete do: [:ex | contents := ex contents].
	self assert: contents = 'abcd'
test-linux:
	docker build --tag swift-bugs . \
		&& docker run --rm swift-bugs

test-swift:
	swift test

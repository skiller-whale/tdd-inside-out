import Testing

enum DemoError: Error { case badInput }

@Suite("Numbers")
struct ExampleTests {
    @Test("compares values and collections")
    func comparesValuesAndCollections() {
        let values = [2, 4, 6]
        #expect(values[2] == 6)
        #expect(values == [2, 4, 6])
    }

    @Test("checks containment and count")
    func checksContainmentAndCount() {
        let values = [2, 4, 6]
        #expect(values.contains(4))
        #expect(values.count == 3)
    }

    @Suite("error cases")
    struct ErrorCases {
        @Test("checks failures")
        func checksFailures() {
            #expect(throws: DemoError.self) {
                throw DemoError.badInput
            }
        }
    }
}

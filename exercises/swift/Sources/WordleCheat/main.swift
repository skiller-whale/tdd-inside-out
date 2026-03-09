import Foundation

let app = WordleApp()
let outputLines = app.run(args: Array(CommandLine.arguments.dropFirst()))

for line in outputLines {
    print(line)
}

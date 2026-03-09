package com.example

fun main(args: Array<String>) {
    val app = WordleApp()
    val outputLines = app.run(args.toList())

    outputLines.forEach(::println)
}

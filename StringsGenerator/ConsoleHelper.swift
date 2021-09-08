//
//  ConsoleHelper.swift
//  StringsGenerator
//
//  Created by Jayakumar Vivek on 04/12/2020.
//

import Foundation

struct ConsoleHelper {
    static func writeMessage(_ message: String, to: OutputType = .standard) {
        switch to {
        case .standard:
            print("\(message)")
        case .error:
            fputs("Error: \(message)\n", stderr)
        }
    }

    static func getInput() -> String {
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        let strData = String(data: inputData, encoding: String.Encoding.utf8)!
        return strData.trimmingCharacters(in: CharacterSet.newlines)
    }
}

enum OutputType {
    case error
    case standard
}

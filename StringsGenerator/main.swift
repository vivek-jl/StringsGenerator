//
//  main.swift
//  StringsGenerator
//
//  Created by Jayakumar, Vivek on 04/12/2020.
//

import Foundation



let bundlePath = Bundle.main.bundlePath
/// Enter the name of the CSV file. File name can be hardcoded to avoid this step
ConsoleHelper.writeMessage("Enter CSV file name. eg: strings.csv")
let fileName = ConsoleHelper.getInput()
let inputPath = bundlePath + "/" + fileName
ConsoleHelper.writeMessage("File Path: " + inputPath)
/// This can also be hardcoded 
ConsoleHelper.writeMessage("Enter language codes. Comma seperated. eg: en,ru")
let language = ConsoleHelper.getInput()
StringsHelper(inputPath: inputPath,
              outputPath: bundlePath,
              languageCodes: language).generateLocalisation()


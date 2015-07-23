//
//  HelperFunctions.swift
//  SpaceAdventure
//
//  Created by Imam on 7/23/15.
//  Copyright (c) 2015 Imam. All rights reserved.
//

import Foundation

func getln() -> String {
  let stdin = NSFileHandle.fileHandleWithStandardInput()
  var input = NSString(data: stdin.availableData, encoding: NSUTF8StringEncoding)
    input = input!.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
    return input as! String
    
}

//
//  NSDate+Zodiac.swift
//  Kelin
//
//  Created by Nurdaulet Bolatov on 5/30/16.
//  Copyright © 2016 Nurdaulet Bolatov. All rights reserved.
//

import UIKit

extension NSDate {
  enum Zodiac: String {
    case Ram = "ram_icon"
    case Bull = "bull_icon"
    case Twins = "twins_icon"
    case Crab = "crab_icon"
    case Lion = "lion_icon"
    case Maiden = "maiden_icon"
    case Scales = "scales_icon"
    case Scorpion = "scorpion_icon"
    case Archer = "archer_icon"
    case MountainSeaGoat = "mountain_sea_goat_icon"
    case WaterBearer = "water_bearer_icon"
    case Fish = "fish_icon"
    case None = ""
  }
  
  func isBetweeenInclusive(date date1: NSDate, andDate date2: NSDate) -> Bool {
    return date1.compare(self).rawValue * self.compare(date2).rawValue >= 0
  }
  
  convenience init(dateString: String) {
    let dateStringFormatter = NSDateFormatter()
    dateStringFormatter.dateFormat = "yyyy-MM-dd"
    let date = dateStringFormatter.dateFromString(dateString)!
    self.init(timeInterval:0, sinceDate:date)
  }
  
  func zodiac() -> Zodiac {
    guard let gregorianCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian) else { return .None }
    let dateComponents = gregorianCalendar.components([.Year], fromDate: self)
    let year = dateComponents.year
    if isBetweeenInclusive(date: NSDate(dateString: "\(year)-03-21"), andDate: NSDate(dateString: "\(year)-04-19")) {
      return .Ram
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-04-20"), andDate: NSDate(dateString: "\(year)-05-20")) {
      return .Bull
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-05-21"), andDate: NSDate(dateString: "\(year)-06-20")) {
      return .Twins
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-06-21"), andDate: NSDate(dateString: "\(year)-07-22")) {
      return .Crab
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-07-23"), andDate: NSDate(dateString: "\(year)-08-22")) {
      return .Lion
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-08-23"), andDate: NSDate(dateString: "\(year)-09-22")) {
      return .Maiden
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-09-23"), andDate: NSDate(dateString: "\(year)-10-22")) {
      return .Scales
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-10-23"), andDate: NSDate(dateString: "\(year)-11-21")) {
      return .Scorpion
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-11-22"), andDate: NSDate(dateString: "\(year)-12-21")) {
      return .Archer
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-12-22"), andDate: NSDate(dateString: "\(year)-12-31"))
      || isBetweeenInclusive(date: NSDate(dateString: "\(year)-01-01"), andDate: NSDate(dateString: "\(year)-01-19")){
      return .MountainSeaGoat
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-01-20"), andDate: NSDate(dateString: "\(year)-02-18")) {
      return .WaterBearer
    } else if isBetweeenInclusive(date: NSDate(dateString: "\(year)-02-19"), andDate: NSDate(dateString: "\(year)-03-20")) {
      return .Fish
    }
    return .None
  }
}

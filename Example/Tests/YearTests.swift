//
//  YearTests.swift
//  SwiftCron
//
//  Created by Keegan Rush on 2016/05/06.
//  Copyright © 2016 Rush42. All rights reserved.
//

import XCTest
@testable import SwiftCron

class YearTests: XCTestCase {

	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}

	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}

	func testEveryYearOn1stJanRunsNextYear() {
		let calendar = NSCalendar.currentCalendar()

		let dateToTestFrom = TestData.may11

		let firstDayOfMonthCron = CronExpression(minute: "0", hour: "0", day: "1", month: "1")
		let nextRunDate = firstDayOfMonthCron?.getNextRunDate(dateToTestFrom)

		XCTAssertTrue(calendar.isDate(TestData.jan1_2017, inSameDayAsDate: nextRunDate!))
	}

}

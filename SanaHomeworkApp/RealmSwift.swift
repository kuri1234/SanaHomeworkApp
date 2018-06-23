//
//  RealmSwift.swift
//  SanaHomeworkApp
//
//  Created by 栗原健 on 2018/06/16.
//  Copyright © 2018年 kurihara. All rights reserved.
//

import Foundation
import RealmSwift

class RealmHomerokHistory: Object {
    @objc dynamic var day : Int = 0;
    @objc dynamic var totalTime : Int = 0;
}


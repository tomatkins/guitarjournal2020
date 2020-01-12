//
//  TimerData.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 1/11/20.
//  Copyright © 2020 High Strung Productions LLC. All rights reserved.
//

import Foundation
import Combine

class TimerData : ObservableObject {
    
    @Published var timeCount = 0
    var timer : Timer?
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerDidFire), userInfo: nil, repeats: true)
    }
    @objc func timerDidFire(){
        timeCount += 1
    }
    
    func resetCount() {
        timeCount = 0
    }
}

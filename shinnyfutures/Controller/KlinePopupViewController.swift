//
//  KlinePopupViewController.swift
//  shinnyfutures
//
//  Created by chenli on 2018/4/18.
//  Copyright © 2018年 xinyi. All rights reserved.
//

import UIKit

class KlinePopupViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var position: UISwitch!
    @IBOutlet weak var order: UISwitch!
    @IBOutlet weak var averageLine: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        position.setOn(UserDefaults.standard.bool(forKey: "positionLine"), animated: false)
        order.setOn(UserDefaults.standard.bool(forKey: "orderLine"), animated: false)
        averageLine.setOn(UserDefaults.standard.bool(forKey: "averageLine"), animated: false)
    }

    // MARK: Actions
    @IBAction func position(_ sender: UISwitch) {
        UserDefaults.standard.set(position.isOn, forKey: "positionLine")
        NotificationCenter.default.post(name: Notification.Name(CommonConstants.ControlPositionLineNotification), object: position.isOn)
    }

    @IBAction func order(_ sender: UISwitch) {
       UserDefaults.standard.set(order.isOn, forKey: "orderLine")
        NotificationCenter.default.post(name: Notification.Name(CommonConstants.ControlOrderLineNotification), object: order.isOn)
    }

    @IBAction func averageLine(_ sender: UISwitch) {
        UserDefaults.standard.set(averageLine.isOn, forKey: "averageLine")
        NotificationCenter.default.post(name: Notification.Name(CommonConstants.ControlAverageLineNotification), object: averageLine.isOn)
    }

}

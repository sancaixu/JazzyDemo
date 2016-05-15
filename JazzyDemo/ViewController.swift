//
//  ViewController.swift
//  JazzyDemo
//
//  Created by 徐三才 on 16/5/15.
//  Copyright © 2016年 徐三才. All rights reserved.
//

import UIKit
/// 继承自UIViewController
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.、
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /**
     骑自行车去旅行
     */
    func toTravel(){
    
        let bike = Bicycle(style: .Road, gearing: .Freewheel(speeds:8), frameSize: 100)
        bike.travel(distance: 200);
        print(bike)
    }
}


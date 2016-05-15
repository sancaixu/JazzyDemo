//
//  Bicycle.swift
//  JazzyDemo
//
//  Created by 徐三才 on 16/5/15.
//  Copyright © 2016年 徐三才. All rights reserved.
//

import Foundation
/// 🚲 自行车，一个人力驱动的交通工具
class Bicycle: NSObject {

    //MARK: Enum
    /**
        自行车的样式
     
     - Road:    用户街道或者步道
     - Touring: 用户长途
     - Cruiser: 用于城镇周围的休闲之旅
     - Hybrid:  用于一般的运输
     */
    enum Style {
        case Road, Touring, Cruiser, Hybrid
    }
    /**
     转换踏板功率为运动的机制
     
     - Fixed:     一个单一的，固定的齿轮
     - Freewheel: 一个可变速的齿轮
     */
    enum Gearing {
        case Fixed
        case Freewheel(speeds: Int)
    }
    //MARK: Properties
    /// 自行车的风格
    let style: Style
    
    /// 自行车的齿轮
    let gearing: Gearing
    
    /// 车架的大小，以厘米为单位
    let frameSize: Int
    
    /// 自行车行使的旅程数
    private(set) var numberOfTrips: Int
     /// 自行车总共行使的距离，米为单位
    private(set) var distanceTravelled:Double
    
    //MARK: Method
    
    /**
     使用提供的部件以及规格初始化一个新的自行车
     
     - parameter style:     自行车的风格
     - parameter genaring:  自行车的齿轮
     - parameter frameSize: 自行车的大小
     
     - returns: 一个全新的自行车
     */
    init(style: Style, gearing: Gearing, frameSize: Int){
        
        self.style = style
        self.gearing = gearing
        self.frameSize = frameSize
        self.numberOfTrips = 0
        self.distanceTravelled = 0
        
    }
    /**
     骑自行车出去溜一溜
     
     - parameter meters: 行使的距离单位为米
     */
    func travel(distance meters: Double) {
        
        if meters > 0 {
            distanceTravelled += meters
            numberOfTrips += 1
        }
        
    }
    
    
}
extension Bicycle{
    override
    
    internal var description: String {
        
        var descriptors: [String] = []
        switch self.style {
        case .Road:
            descriptors.append("A road bike for streets or trails")
        case .Touring:
            descriptors.append("A touring bike for long journeys")
        case .Cruiser:
            descriptors.append("A cruiser bike for casual trips around town")
        case .Hybrid:
            descriptors.append("A hybrid bike for general-purpose transportation")

        }
        switch self.gearing {
        case .Fixed:
            descriptors.append("with a single, fixed gear")
        case .Freewheel(let n):
            descriptors.append("with a \(n)-speed freewheel gear")
        }
        descriptors.append("on a \(frameSize)\" frame")
        descriptors.append("with a total of \(distanceTravelled) meters traveled over \(numberOfTrips) trips.")
        
        return descriptors.joinWithSeparator(", ")


    }

}
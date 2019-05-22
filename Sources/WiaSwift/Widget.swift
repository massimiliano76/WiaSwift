//
//  Widget.swift
//  WiaSwift
//
//  Created by Conall Laverty on 23/06/2018.
//  Copyright © 2017 Wia Technologies Limited. All rights reserved.
//

import Foundation
import ObjectMapper

open class Widget: Mappable {
    
    // The ID of this Widget
    public var id: String?
    
    // The type of this Widget
    public var type: WidgetType?
    
    // The name of this Widget
    public var name: String?

    // The config of this Widget
    public var config: WidgetConfig?
    
    // The created at timestamp of this Widget
    public var createdAt: Date?

    // The updated at timestamp of this Widget
    public var updatedAt: Date?

    // Constructor
    init(id: String? = nil, name: String? = nil) {
        self.id = id
        self.name = name
    }
    
    public required init?(){
        
    }
    
    public required init?(map: Map){
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        type <- map["type"]
        name <- map["name"]
        config <- map["config"]
        createdAt <- map["createdAt"]
        updatedAt <- map["updatedAt"]
    }
}

open class WidgetType: Mappable {
    
    // The ID of this WidgetType
    public var id: Int?
    
    // The name of this WidgetType
    public var name: String?
    
    // Constructor
    init(id: Int? = nil, name: String? = nil) {
        self.id = id
        self.name = name
    }
    
    public required init?(){
        
    }
    
    public required init?(map: Map){
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
    }
}

open class WidgetConfig: Mappable {
    
    public var eventName: String?
    
    public var eventUnit: String?
    
    public var timePeriod: String?
    
    public var aggregateFunction: String?

    // Constructor
//    init() {
//    }
    
    public required init?(){
        
    }
    
    public required init?(map: Map){
        
    }
    
    public func mapping(map: Map) {
        eventName <- map["eventName"]
        eventUnit <- map["eventUnit"]
        timePeriod <- map["timePeriod"]
        aggregateFunction <- map["aggregateFunction"]
    }
}


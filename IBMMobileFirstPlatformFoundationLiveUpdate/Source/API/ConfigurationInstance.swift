/**
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 */

//
//  ConfigurationInstance.swift
//
//  Created by Oleg Sternberg & Ishai Borovoy on 14/1/16.
//  Copyright © 2016 IBM. All rights reserved.
//

import Foundation

class ConfigurationInstance: Configuration {
    fileprivate var _data: [String: AnyObject]
    fileprivate var _id : String
    
    init(id: String, data: [String: AnyObject]) {
        _data = data
        _id = id
    }
    
    func isFeatureEnabled (_ featureId: String)->Bool? {
        if let features = _data["data"]!["features"]! as? NSDictionary, let feature =  features[featureId] as? Bool{
            return feature
        }
        return nil
    }
    
    func getProperty (_ propertyId : String)->String? {
        if let properties = _data["data"]!["properties"]! as? NSDictionary, let property = properties[propertyId] as? String{
            return property
        }
        return nil
    }
    
    func getConfigData()-> [String: AnyObject]{
        return _data["data"] as! [String : AnyObject]
    }
    
    var id: String {
        return _id
    }
    
    var data : [String: AnyObject] {
        return _data
    }
    
    var description: String {
        return _data.description
    }
}

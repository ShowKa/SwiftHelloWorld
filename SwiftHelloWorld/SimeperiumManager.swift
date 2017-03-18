//
//  SimeperiumManager.swift
//  SwiftHelloWorld
//
//  Created by 金本翔太 on 2017/03/16.
//  Copyright © 2017 金本翔太. All rights reserved.
//

import Foundation
import Simperium

class SimperiumManager {
    
    var simperium: Simperium
    
    let appId = SimperiumAuth.APP_ID
    
    let apiKey = SimperiumAuth.API_KEY
    
    // Singleton
    class var sharedInstance : SimperiumManager {
        struct Static {
            static let instance : SimperiumManager = SimperiumManager()
        }
        return Static.instance
    }
    
    private init () {
        
        // init
        let cdm = CoreDataManager.sharedInstance
        simperium = Simperium.init(model: cdm.managedObjectModel, context: cdm.managedObjectContext, coordinator: cdm.persistentStoreCoordinator)
        
        // auth
        simperium.authenticate(withAppID: appId, apiKey: apiKey, rootViewController: UIApplication.shared.keyWindow?.rootViewController)
    }
}

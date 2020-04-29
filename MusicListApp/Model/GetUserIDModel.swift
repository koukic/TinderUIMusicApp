//
//  GetUserIDModel.swift
//  MusicListApp
//
//  Created by 中條航紀 on 2020/03/12.
//  Copyright © 2020 中條航紀. All rights reserved.
//

import Foundation
import Firebase
import PKHUD


class GetUserIDModel {
    
    var userID:String! = ""
    var userName:String! = ""
    var ref:DatabaseReference! = Database.database().reference().child("profile")
    
    init(snapshot:DataSnapshot){
        
        
        ref = snapshot.ref
        
        if let value = snapshot.value as? [String:Any]{
            
            userID = value["userID"] as? String
            userName = value["userName"] as? String
            
            
        }
        
        
    }
    
}


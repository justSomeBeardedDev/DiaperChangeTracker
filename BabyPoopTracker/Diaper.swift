//
//  Diaper.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/7/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import Foundation
import CoreData

public class Diaper: NSManagedObject, Identifiable{
    @NSManaged public var date: Date?
    @NSManaged public var wetDiaper: Int16
    @NSManaged public var dirtyDiaper: Int16
}
extension Diaper {
    static func getAllDiaper() -> NSFetchRequest<Diaper>{
        let request: NSFetchRequest<Diaper> = Diaper.fetchRequest() as!
        NSFetchRequest<Diaper>
        
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        return request
    }
    
}

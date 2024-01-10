//
//  Library.swift
//  LifeNote
//
//  Created by Arkar on 05/01/2024.
//

import Foundation
import UIKit

struct Library{
    let title : String
    let image : UIImage
    
}

var libraries : [Library] = [
Library(title: "Bookmarks", image: UIImage(named: "save")!),
Library(title: "Downloaded", image: UIImage(named: "down")!),
Library(title: "Finished", image: UIImage(named: "mark")!)

]

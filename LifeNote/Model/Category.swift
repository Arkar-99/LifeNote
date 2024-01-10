//
//  Category.swift
//  LifeNote
//
//  Created by Arkar on 05/01/2024.
//

import Foundation
import UIKit


struct Category{
    let title : String
    let image : UIImage
    
}

var categories : [Category] = [
Category(title: "ရောင်းအားအကောင်းဆုံးစာအုပ်များ", image: UIImage(named: "best")!),
Category(title: "အောင်မြင်တိုးတတ်ရေး", image: UIImage(named: "trophy")!),
Category(title: "စိတ်ပညာနှင့်ဘဝပျော်ရွင်မူ", image: UIImage(named: "psycho")!),
Category(title: "စီးပွားရေးနှင့်စီမံခန့်ခွဲမူ", image: UIImage(named: "market")!),
Category(title: "သမိုင်းနှင့်နိုင်ငံရေး", image: UIImage(named: "history")!),
Category(title: "အထွေထွေအသိပညာ", image: UIImage(named: "general")!),
Category(title: "မားကတ်သင်း", image: UIImage(named: "market")!)

]

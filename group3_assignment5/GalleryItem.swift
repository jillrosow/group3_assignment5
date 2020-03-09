//
//  GalleryItem.swift
//  group3_assignment5
//
//  Created by Jessica Hairston on 3/9/20.
//  Copyright © 2020 Jill Rosow. All rights reserved.
//

import UIKit

class galleryItem{
    
    //var header:String
    var caption:String
    var photo:UIImage?
    //var footer:String
    
    init?(caption:String, photo:UIImage?){
        //self.header = header
        self.caption = caption
        self.photo = photo
        //self.footer = footer
    }
}

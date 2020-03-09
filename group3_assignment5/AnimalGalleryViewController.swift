//
//  AnimalGalleryViewController.swift
//  group3_assignment5
//
//  Created by Jessica Hairston on 3/9/20.
//  Copyright © 2020 Jill Rosow. All rights reserved.
//

import UIKit

class AnimalGalleryViewController: UIViewController {
    
    var galleryItem:galleryItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    private func accessAnimalPlist(){
        let inputFile = Bundle.main.path(forResource: "animalPlist", ofType: "plist")
        let inputDataArray = NSArray(contentsOfFile: inputFile!)
        let nestedArrays = 
        for input in inputDataArray as![Array<Dictionary<String, String>>]{
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

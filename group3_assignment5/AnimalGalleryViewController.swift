//
//  AnimalGalleryViewController.swift
//  group3_assignment5
//
//  Created by Jessica Hairston on 3/9/20.
//  Copyright © 2020 Jill Rosow. All rights reserved.
//

import UIKit

class AnimalGalleryViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var animalGalleryCollectionView: UICollectionView!
    
    var items = [GalleryItem]()
    let identifier = "AnimalGalleryCell"
    
    //var GalleryItem:galleryItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accessAnimalPlist()
        
        // Do any additional setup after loading the view.
    }
    
    private func accessAnimalPlist(){
        let inputFile = Bundle.main.path(forResource: "animalPlist", ofType: "plist")
        let inputDataArray = NSArray(contentsOfFile: inputFile!)
        for input in inputDataArray as![Dictionary<String, String>]{
            for (key, value) in input{
                items.append(GalleryItem(caption: value, photo: key))
            }
        }
    }
    
    //MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //headerLabel.text = "a"
        //footerLabel.text = "q"

        let cell = animalGalleryCollectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! AnimalGalleryCollectionViewCell
            
        cell.animalGalleryLabel.text = items[indexPath.row].caption
        cell.animalGalleryImageView.image = UIImage(named:items[indexPath.row].photo)
        
        return cell
    }
    
    /*func collectionVIew(_ animalGalleryCollectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = animalGalleryCollectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! AnimalGalleryCollectionViewCell
            
        cell.animalGalleryLabel.text = items[indexPath.row].caption
        cell.animalGalleryImageView.image = UIImage(named:items[indexPath.row].photo)
        
        return cell
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

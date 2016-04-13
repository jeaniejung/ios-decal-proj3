//
//  PhotosCollectionViewController.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import UIKit
    var tableView = UICollectionViewController()
class PhotosCollectionViewController: UICollectionViewController {
    var photos: [Photo]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let api = InstagramAPI()
        api.loadPhotos(didLoadPhotos)
        
        
        //FILL THIS IN
        
    }
    

    /* 
     * IMPLEMENT ANY COLLECTION VIEW DELEGATE METHODS YOU FIND NECESSARY
     * Examples include cellForItemAtIndexPath, numberOfSections, etc.
     */
    
    /* Creates a session from a photo's url to download data to instantiate a UIImage. 
       It then sets this as the imageView's image. */
    
    func loadImageForCell(photo: Photo, imageView: UIImageView) {
        
        //FILL THIS IN
        imageView.image = photo
        
        
        
    }
    
    /* Completion handler for API call. DO NOT CHANGE */
    func didLoadPhotos(photos: [Photo]) {
        self.photos = photos
        self.collectionView!.reloadData()
    }
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PhotoCell", forIndexPath: indexPath) as! PhotoCell!
        return cell
        
    }
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        if w.cellForItemAtIndexPath(indexPath) != nil {
//
//        }
    }
    
}


//
//PhotosCollectionViewController.swift - Collection View of Photos
//One photo per cell
//You must implement any necessary delegate methods
//You must implement loadImageForCell
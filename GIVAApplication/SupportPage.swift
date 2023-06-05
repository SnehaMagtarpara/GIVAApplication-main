//
//  SupportPage.swift
//  GIVAApplication
//
//  Created by R93 on 05/06/23.
//

import UIKit

class SupportPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var cv: UICollectionView!
    
     var image = [UIImage(named:"1.1"),UIImage(named:"1.2"),UIImage(named:"1.3")]
    var name = ["Shipping, Order Tracking & Delivery","Return, Replacement & Excange","Payments & Refunds"]
    var artical = ["16 articals","10 articals","11 articals"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = image[indexPath.row]
        cell.label.text = name[indexPath.row]
        cell.label2.text = artical[indexPath.row]
        
        return cell
    
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 389, height: 157)
    }
    

}

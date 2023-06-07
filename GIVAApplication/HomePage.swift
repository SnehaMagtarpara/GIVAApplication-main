//
//  HomePage.swift
//  GIVAApplication
//
//  Created by R93 on 05/06/23.
//

import UIKit

class HomePage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    var image = [UIImage(named:"2.1"),UIImage(named:"2.2"),UIImage(named:"2.3"),UIImage(named:"2.4"),UIImage(named:"2.5"),UIImage(named:"2.7"),UIImage(named:"2.8"),UIImage(named:"2.9"),UIImage(named:"3.0")]
    var name = ["PENDANTS","RINGS","EARRINGS","BRACELETS","MENA","COUPLE RINGS","COIN","NOSE PINS","CHAIN","TOE RINGS"]

       var image2 = [UIImage(named:"3.1"),UIImage(named:"3.2"),UIImage(named:"3.3"),UIImage(named:"3.4"),UIImage(named:"3.5")]
    
    var image3 = [UIImage(named:"4.1"),UIImage(named:"4.2"),UIImage(named:"4.3"),UIImage(named:"4.4"),UIImage(named:"4.5"),UIImage(named:"4.6"),UIImage(named:"4.7"),UIImage(named:"4.8"),UIImage(named:"4.9"),UIImage(named:"5.0")]
    var discription = ["Silver Yin And Yang Energy Pendant With Link Chain","Silver Serentity Sphere Pendant With link Chain","Silver Stylish Hexagon Pendant With link Chain","Golden Rectangular Beauty Pendant With Link Chain","Golden Modern Beauty Pendant With Link Chain","Rose Gold Classic Glory Pendany With Link Chain","Silver Aura Of Elegance pendant With Link Chain","Silver Pyramid Ring","Silver Rope Ring for HIM/Her","Silver Classic Link Ring for Him/Her"]
    var price = ["2999","2599","1999","2799","2999","2799","2499","1499","1299","1299"]
    
    var image4 = [UIImage(named:"5.1"),UIImage(named:"5.2"),UIImage(named:"5.3"),UIImage(named:"5.4"),UIImage(named:"0"),UIImage(named:"5.6"),UIImage(named:"5.7"),UIImage(named:"5.8"),UIImage(named:"5.6"),UIImage(named:"6.0")]
    
    var image5 = [UIImage(named:"6.1"),UIImage(named:"6.2")]
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var cv3: UICollectionView!
    @IBOutlet weak var cv4: UICollectionView!
    @IBOutlet weak var cv5: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv
        {
            return image.count
        }
        else if collectionView == self.cv2
        {
            return image2.count
        }
        else if collectionView == self.cv3
        {
            return image3.count
        }
        else if collectionView == self.cv4
        {
            return image4.count
        }
        else
        {
            return image5.count
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cv
        {
            let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            cell.img.image = image[indexPath.row]
            cell.nameLabel.text = name[indexPath.row]
            return cell
        }
        else if collectionView == self.cv2
        {
            let cell2 = cv2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.img2.image = image2[indexPath.row]
            
            return cell2
        }
        else if collectionView == self.cv3
        {
            let cell3 = cv3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.img3.image = image3[indexPath.row]
            cell3.discriptionLabel.text = discription[indexPath.row]
            cell3.pricelabel.text = price[indexPath.row]
            
            return cell3
            
        }
        else if collectionView == self.cv4
        {
            let cell4 = cv4.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CollectionViewCell4
            cell4.img4.image = image4[indexPath.row]
            return cell4
            
        }
        else
        {
            let cell5 = cv5.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! CollectionViewCell5
            cell5.img5.image = image5[indexPath.row]
            return cell5
            
            
        }
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.cv
        {
            return CGSize(width: 131, height: 160)
        }
        else if collectionView == self.cv2
        {
            return CGSize(width: 356, height: 128)
        }
        else if collectionView == self.cv3
        {
            return CGSize(width: 153, height: 240)
        }
        else if collectionView == self.cv4
        {
            return CGSize(width: 372, height: 143)
        }
        else
        {
            return CGSize(width: 162, height: 156)
        }
        
    }
    

    

}

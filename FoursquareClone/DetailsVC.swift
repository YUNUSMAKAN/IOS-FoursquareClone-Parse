//
//  DetailsVC.swift
//  FoursquareClone
//
//  Created by MAKAN on 28.05.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import UIKit
import MapKit
import Parse

class DetailsVC: UIViewController {

    @IBOutlet weak var detailsImageView: UIImageView!
    @IBOutlet weak var detailsNameLabel: UILabel!
    @IBOutlet weak var detailsTypeLabel: UILabel!
    @IBOutlet weak var detailsAtmosphereLabel: UILabel!
    @IBOutlet weak var detailsMapView: MKMapView!
    
    var chosenPlaceId = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //parsedan secilenin bilgilerini cekme islemi.
        let query = PFQuery(className: "Places")
        query.whereKey("objectId", equalTo: chosenPlaceId) //filtreleme islemi
        query.findObjectsInBackground { (objects, error) in
            if error != nil {
                
            }else{
                print(objects)
            }
        }

    }
    


}

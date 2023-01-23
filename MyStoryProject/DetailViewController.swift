//
//  DetailViewController.swift
//  MyStoryProject
//
//  Created by Claudio Micieli on 1/19/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var guts : Gutsdetail?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //if let dinosaur = dinosaur {
        
        if let guts = guts {
            print("in guts")
            
            DetailImage.image = guts.image
            DetailLabel.text = guts.detail
        }
        
        
    }
    
    @IBOutlet weak var DetailImage: UIImageView!
    
    @IBOutlet weak var DetailLabel: UILabel!
    
}

//
//  StoryDetailViewController.swift
//  InstagramApp. UItable and Uicollection
//
//  Created by Alikhan Tuxubayev on 18.02.2021.
//

import UIKit

class StoryDetailViewController: UIViewController {

    @IBOutlet weak var storyImageView: UIImageView!
    
    var img = ""
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyImageView.image = UIImage(named: img)
    }
    
   
    
}

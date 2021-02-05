//
//  ViewController.swift
//  InstagramApp. UItable and Uicollection
//
//  Created by Alikhan Tuxubayev on 2/4/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    var instagramData: [User] = [User(name: "Juliet", imageName: "images-1", postImage: "bmw1", numberOfLikes: 100, userImageName: "avatar1"),User(name: "Fred", imageName: "images-2",postImage: "bmw2", numberOfLikes: 100, userImageName: "avatar2"),User(name: "Carl", imageName: "images-3",postImage: "bmw3", numberOfLikes: 100, userImageName: "avatar3"),User(name: "Wanda", imageName: "images-4", postImage: "bmw4", numberOfLikes: 100, userImageName: "avatar4"),User(name: "Ashlie", imageName: "images-5", postImage: "bmw5", numberOfLikes: 100, userImageName: "avatar5"),User(name: "Sam & Kate", imageName: "images-6", postImage: "bmw6", numberOfLikes: 100, userImageName: "avatar6"),User(name: "Tony", imageName: "images-7", postImage: "bmw7", numberOfLikes: 100, userImageName: "avatar7"),User(name: "Zara", imageName: "images-8", postImage: "bmw8", numberOfLikes: 100, userImageName: "avatar8"),User(name: "Ray", imageName: "images-9", postImage: "bmw9", numberOfLikes: 100, userImageName: "avatar9")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)

        title = "Instagram"
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        collectionView.showsHorizontalScrollIndicator = false
    
        collectionView.delegate = self
        collectionView.dataSource = self
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return instagramData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        cell.configure(with: instagramData[indexPath.row])
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return instagramData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCell", for: indexPath) as! StoryCollectionViewCell
        cell.avatarImageView.image = UIImage(named: instagramData[indexPath.row].imageName)
        cell.nameLabel.text = instagramData[indexPath.row].name
        cell.avatarImageView.layer.cornerRadius = 35
        cell.avatarImageView.layer.borderWidth = 4
        cell.avatarImageView.layer.borderColor = UIColor(red: 255/255, green: 76/255, blue: 91/255, alpha: 1).cgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 125, height: 125)
    }
    
}




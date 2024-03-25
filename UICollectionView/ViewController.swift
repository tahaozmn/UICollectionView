//
//  ViewController.swift
//  UICollectionView
//
//  Created by Taha Özmen on 1.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    var collectionView: UICollectionView!
    
    let apps: [Apps] = [
    Apps(name: "AliExpress", image: UIImage(named: "aliex.png")!, appDate: "26.04.2010", appCategory: "Shopping", appUrl: "aliexpress.com"),
    Apps(name: "Amazon", image: UIImage(named: "amazon.png")!, appDate: "01.05.2015", appCategory: "Shopping", appUrl: "amazon.com"),
    Apps(name: "FaceBook", image: UIImage(named: "facebook.png")!, appDate: "04.02.2004", appCategory: "Social Media", appUrl: "facebook.com"),
    Apps(name: "Tiktok", image: UIImage(named: "tiktok.png")!, appDate: "02.08.2018", appCategory: "Social Media", appUrl: "tiktok.com"),
    Apps(name: "Twitch", image: UIImage(named: "twitch.png")!, appDate: "05.06.2011", appCategory: "Stream Platform", appUrl: "twitch.com"),
    Apps(name: "WhatsApp", image: UIImage(named: "wp.png")!, appDate: "24.01.2009", appCategory: "Social Media", appUrl: "whatsapp.com"),
    Apps(name: "YouTube", image: UIImage(named: "youtube.png")!, appDate: "24.04.2005", appCategory: "Video", appUrl: "youtube.com"),
    Apps(name: "Discord", image: UIImage(named: "discord.png")!, appDate: "07.11.2015", appCategory: "Voice Chat", appUrl: "discord.com"),
    Apps(name: "Reddit", image: UIImage(named: "reddit.png")!, appDate: "23.06.2005", appCategory: "Social Media", appUrl: "https://www.reddit.com/"),
    Apps(name: "Shazam", image: UIImage(named: "shazam.png")!, appDate: "15.08.2002", appCategory: "Music", appUrl: "https://apps.apple.com/cy/app/shazam/id284993459?l=tr"),
    Apps(name: "Spotify", image: UIImage(named: "spotify.png")!, appDate: "07.10.2008", appCategory: "Music", appUrl: "https://open.spotify.com/intl-tr")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Home"
        view.backgroundColor = .systemBackground
        
        let layout = UICollectionViewFlowLayout()
        
        layout.itemSize = CGSize(width: view.frame.width / 2 - 15, height: 150)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.register(AppCell.self, forCellWithReuseIdentifier: "AppCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .clear
        
        view.addSubview(collectionView)
        
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return apps.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppCell", for: indexPath) as! AppCell
        let app = apps[indexPath.item]
        cell.imageView.image = app.image
        cell.nameLabel.text = app.name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedApp = apps[indexPath.item]
        let detailsVC = DetailsVC()
        detailsVC.app = selectedApp
        navigationController?.pushViewController(detailsVC, animated: true)
    }
    
}


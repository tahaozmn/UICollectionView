//
//  DetailsVC.swift
//  UICollectionView
//
//  Created by Taha Özmen on 1.03.2024.
//

import Foundation
import UIKit

class DetailsVC: UIViewController {
    
    var imageView: UIImageView!
    var nameLabel: UILabel!
    var dateLabel: UILabel!
    var categoryLabel: UILabel!
    var urlLabel: UILabel!
    
    var app: Apps!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = app.name
        view.backgroundColor = .systemBackground
        
        imageView = UIImageView(frame: CGRect(x: 50, y: 100, width: 200, height: 200))
        imageView.image = app.image
        view.addSubview(imageView)
        
        nameLabel = UILabel(frame: CGRect(x: 50, y: 320, width: 200, height: 30))
        nameLabel.text = app.name
        nameLabel.font = UIFont.boldSystemFont(ofSize: 16)
        view.addSubview(nameLabel)
        
        dateLabel = UILabel(frame: CGRect(x: 50, y: 360, width: 300, height: 30))
        dateLabel.text = "Release Date : \(app.appDate)"
        dateLabel.font = UIFont.boldSystemFont(ofSize: 16)
        view.addSubview(dateLabel)
        
        categoryLabel = UILabel(frame: CGRect(x: 50, y: 400, width: 200, height: 50))
        categoryLabel.text = "Category : \(app.appCategory)"
        categoryLabel.font = UIFont.boldSystemFont(ofSize: 16)
        categoryLabel.numberOfLines = 0
        view.addSubview(categoryLabel)

        urlLabel = UILabel(frame: CGRect(x: 50, y: 440, width: 300, height: 60))
        urlLabel.text = app.appUrl
        urlLabel.textColor = .blue
        urlLabel.numberOfLines = 0
        urlLabel.font = UIFont.boldSystemFont(ofSize: 16)
        urlLabel.isUserInteractionEnabled = true
        view.addSubview(urlLabel)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(openUrl))
        urlLabel.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func openUrl() {
       
        guard let myUrl = URL(string: app.appUrl) else {return}
        UIApplication.shared.open(myUrl)
    }
    
}

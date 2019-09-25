//
//  MainTabBarController.swift
//  ImageFinder
//
//  Created by Eduard Ovchinnikov on 22/09/2019.
//  Copyright © 2019 Eduard Ovchinnikov. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        view.backgroundColor = .gray
        print("TabBar")
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        viewControllers = [
            generateNavigationController(rootViewControleler: photosVC, title: "Photos", image: #imageLiteral(resourceName: "photos")),
        generateNavigationController(rootViewControleler: ViewController(), title: "Favourites", image: #imageLiteral(resourceName: "heart"))]
    }
    
    private func generateNavigationController(rootViewControleler: UIViewController, title: String, image: UIImage?) -> UIViewController {
        
        let navigationVC = UINavigationController(rootViewController: rootViewControleler)
        
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}

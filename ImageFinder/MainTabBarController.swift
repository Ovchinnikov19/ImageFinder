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
        let navigationVC = UINavigationController(rootViewController: photosVC)
        
        viewControllers = [navigationVC, ViewController()]
    }
}

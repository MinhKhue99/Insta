//
//  MainTabController.swift
//  Insta
//
//  Created by KhuePM on 06/07/2024.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK:  LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
    }
    
    // MARK:  Helper
    
    private func configureViewController() {
        let layout = UICollectionViewFlowLayout()
        let feedController = createTemplateNavigationController(selectedImage: UIImage(systemName: "house.fill")!, unSelectedImage: UIImage(systemName: "house")!, rootViewController: FeedController(collectionViewLayout: layout))
        let searchController = createTemplateNavigationController(selectedImage: UIImage(systemName: "magnifyingglass.circle.fill")!, unSelectedImage: UIImage(systemName: "magnifyingglass.circle")!, rootViewController: SearchController())
        let imageSelectorController = createTemplateNavigationController(selectedImage: UIImage(systemName: "photo.artframe.circle.fill")!, unSelectedImage: UIImage(systemName: "photo.artframe.circle")!, rootViewController: ImageSelectorController())
        let notificationController = createTemplateNavigationController(selectedImage: UIImage(systemName: "bell.fill")!, unSelectedImage: UIImage(systemName: "bell")!, rootViewController: NotificationCotroller())
        let profileController = createTemplateNavigationController(selectedImage: UIImage(systemName: "person.fill")!, unSelectedImage: UIImage(systemName: "person")!, rootViewController: ProfileController())
        
        viewControllers = [feedController, searchController, imageSelectorController, notificationController, profileController]
        tabBar.tintColor = .black
    }
    
    private func createTemplateNavigationController(selectedImage: UIImage, unSelectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unSelectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        
        return nav
    }
}

#Preview {
    let mainTabController = MainTabController()
    return mainTabController
}

//
//  FeedController.swift
//  Insta
//
//  Created by KhuePM on 06/07/2024.
//

import UIKit

private let reusableIdentifier = "Cell"
class FeedController: UICollectionViewController {
    
    // MARK:  LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
    }
    
    // MARK:  Helper
    private func configUI() {
        collectionView.backgroundColor = .white
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier: reusableIdentifier)
    }
}

// MARK:  UIColectionViewDataSource
extension FeedController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reusableIdentifier, for: indexPath) as! FeedCell
        return cell
    }
}

// MARK:  UICollectionViewDelegateFlowLayout
extension FeedController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width
        var height = width + 8 + 40 + 8
        height += 50
        height += 60
        return CGSize(width: width, height: height)
    }
}

#Preview {
    let layout = UICollectionViewFlowLayout()
    let feedController = FeedController(collectionViewLayout: layout)
    return feedController
}

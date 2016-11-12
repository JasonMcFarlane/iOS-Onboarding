//
//  ViewController.swift
//  OnboardginTest
//
//  Created by Jason McFarlane on 26/09/2016.
//  Copyright © 2016 Jason McFarlane. All rights reserved.
//

import UIKit

class OnboardingVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: OnboardingButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return onboardingPages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingPageCell", for: indexPath) as! OnboardingPageCell
        let page = onboardingPages[indexPath.row]
        cell.onboardingPage = page
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    /*Attach Page Control*/
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let pageNumber = Int(targetContentOffset.pointee.x / view.frame.width)
        pageControl.currentPage = pageNumber
        toggleNextButton()
    }
    
    @IBAction func nextPageButtonClicked(_ sender: AnyObject) {
        let visibleItems: NSArray = self.collectionView.indexPathsForVisibleItems as NSArray
        let currentItem: NSIndexPath = visibleItems.object(at: 0) as! NSIndexPath
        let nextItem: NSIndexPath = NSIndexPath(row: currentItem.row + 1, section: 0)
        self.collectionView.scrollToItem(at: nextItem as IndexPath, at: .left, animated: true)
        
        pageControl.currentPage += 1
        
        toggleNextButton()
        
    }
    
    func toggleNextButton() {
        if(pageControl.currentPage == onboardingPages.count - 1) {
    
            UIView.animate(withDuration: 0.3, animations: {
                self.nextButton.alpha = 0.0
            })
            
        } else {
            UIView.animate(withDuration: 0.3, animations: {
                self.nextButton.alpha = 1.0
            })
        }
    }

}


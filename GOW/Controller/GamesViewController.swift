//
//  GamesViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class GamesViewController: UIViewController {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var imagePageControl: UIPageControl!
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("Right swipe done")
        if imagePageControl.currentPage == 0 {
            imagePageControl.currentPage = 7
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        } else {
            imagePageControl.currentPage -= 1
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
        updatePageControlDots()
    }
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        print("Left swipe done")
        if imagePageControl.currentPage == 7 {
            imagePageControl.currentPage = 0
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        } else {
            imagePageControl.currentPage += 1
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
        updatePageControlDots()
    }
    
    
    //datasource :P
    let gamePosters = Array(0...7)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        imagePageControl.numberOfPages = gamePosters.count
        gameImage.image = UIImage(named: gamePosters.first?.description ?? "0")
        updatePageControlDots()
    }
    func updatePageControlDots() {
        
        for index in 0..<imagePageControl.numberOfPages {
            if index == imagePageControl.currentPage {
                imagePageControl.setIndicatorImage(UIImage(named: "gow_logo")?.withRenderingMode(.alwaysOriginal), forPage: index)
            } else {
                // Reset to default dot for unselected pages
                imagePageControl.setIndicatorImage(nil, forPage: index)
            }
        }
    }
}

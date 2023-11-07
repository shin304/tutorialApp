//
//  ViewController.swift
//  TutorialApp
//
//  Created by 大野真之介 on 2023/10/27.
//

import UIKit

class ViewController: UIViewController {
    var currentPage: Int = 1
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imageA: UIImage! = UIImage(named: "image1-a")
        let imageB: UIImage! = UIImage(named: "image1-b")
        
        image.animationImages = [imageA, imageB]
        image.animationDuration = 1
        image.startAnimating()
    }
    
    // MARK: - Action
    @IBAction func tapPreviousButton() {
        if currentPage < Page.LAST {
            currentPage += 1
        }
        print("\(currentPage)ページ目")
        pageTransition(pageNo: currentPage)
    }
    @IBAction func tapkBackButton() {
        if currentPage > Page.FIRST {
            currentPage -= 1
        }
        print("\(currentPage)ページ目")
        pageTransition(pageNo: currentPage)
    }
    
    // MARK: - Function
    /// activate page transition
    /// - Parameter pageNo: current page
    func pageTransition(pageNo: Int) {
        image.stopAnimating()
        switch pageNo {
        case 1:
            image.animationImages = [UIImage(named: "image1-a")!, UIImage(named: "image1-b")!]
        case 2:
            image.animationImages = [UIImage(named: "image2-a")!, UIImage(named: "image2-b")!]
        case 3:
            image.animationImages = [UIImage(named: "image3-a")!, UIImage(named: "image3-b")!]
        case 4:
            image.animationImages = [UIImage(named: "image4-a")!, UIImage(named: "image4-b")!]
        default: break
        }
        image.startAnimating()
    }
}

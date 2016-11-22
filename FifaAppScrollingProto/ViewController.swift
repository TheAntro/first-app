//
//  ViewController.swift
//  FifaAppScrollingProto
//
//  Created by Valtteri Ranta on 22/11/2016.
//  Copyright © 2016 Valtteri Ranta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...7 {
            let image = UIImage(named: "team\(x + 1)")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            contentWidth = scrollWidth*CGFloat(x)
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 90, y: (scrollView.frame.size.height / 4) - 90, width: 180, height: 180)
            
            scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


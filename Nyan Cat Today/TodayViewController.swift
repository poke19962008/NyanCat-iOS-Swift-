//
//  TodayViewController.swift
//  Nyan Cat Today
//
//  Created by Sayan Das on 21/06/15.
//  Copyright (c) 2015 Sayan Das. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "Portrait-Nyan-1.png")
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        
        var frames = [UIImage]()
        for i in 1...12{
            frames.append(UIImage(named: "Portrait-Nyan-\(i).png")!)
        }
        
        imageView.animationImages = frames
        imageView.animationDuration = 1.0
        imageView.startAnimating()
        
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
}

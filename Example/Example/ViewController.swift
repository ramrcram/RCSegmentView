//
//  ViewController.swift
//  Example
//
//  Created by Ramesh R C on 26.02.20.
//  Copyright © 2020 Ramesh R C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ViewSegment: RCSegmentView!{
        didSet{
            ViewSegment.delegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


extension ViewController : RCSegmentViewDelegate{
    func setController() -> [RCSegmentSlide] {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewControllerTab1 = storyboard.instantiateViewController(withIdentifier: "ViewControllerTab1")
        let viewControllerTab2 = storyboard.instantiateViewController(withIdentifier: "ViewControllerTab2")
        let slides = [
            RCSegmentSlide(buttonTitle: "VC_1", vc: viewControllerTab1),
            RCSegmentSlide(buttonTitle: "VC_2", vc: viewControllerTab2)
        ]
        return slides
    }
    func didDisplayViewController(vc: UIViewController, at index: Int) {
        debugPrint("index",index)
    }
    
    func updateConfig() -> RCSegmentButtonConfig {
        var config = RCSegmentButtonConfig()
        //config
        return config
    }
}

//
//  ViewController.swift
//  Falling Ball
//
//  Created by as17acg on 18/11/2019.
//  Copyright © 2019 as17acg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicItemBehaviour: UIDynamicItemBehavior!
    
    @IBOutlet weak var Ball: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        dynamicItemBehaviour = UIDynamicItemBehavior(items: [Ball])
        self.dynamicItemBehaviour.addLinearVelocity(CGPoint(x: 0, y: 120), for: Ball )
        dynamicAnimator.addBehavior(dynamicItemBehaviour)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}


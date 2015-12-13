
//
//  Created by David Fearon on 13/12/2015.
//  Copyright © 2015 David Fearon. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let temp1 : CGFloat = 2700;
        let temp2 : CGFloat = 4000;
        let temp3 : CGFloat = 6000;
        let temp4 : CGFloat = 6600;
        
        box1.backgroundColor = UIColor().colorWithColorTemperature(temp1)
        box2.backgroundColor = UIColor().colorWithColorTemperature(temp2)
        box3.backgroundColor = UIColor().colorWithColorTemperature(temp3)
        box4.backgroundColor = UIColor().colorWithColorTemperature(temp4)
        
        label1.text = "\(temp1)K"
        label2.text = "\(temp2)K"
        label3.text = "\(temp3)K"
        label4.text = "\(temp4)K"
    }
}


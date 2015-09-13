//
//  FirstViewController.swift
//  MoneygerNote
//
//  Created by Takaaki Yoshioka on 2015/09/12.
//  Copyright © 2015年 JBS. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // DBの初期化をする場合はこのコメントアウトを外す
        // try! SampleDataMeker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func switchToAllGroupEdit(sender: AnyObject) {
        self.performSegueWithIdentifier("AllGroupEdit", sender: self)
    }
}


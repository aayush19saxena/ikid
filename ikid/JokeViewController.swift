//
//  JokeViewController.swift
//  ikid
//
//  Created by Aayush  Saxena on 2/5/18.
//  Copyright © 2018 Aayush  Saxena. All rights reserved.
//

import UIKit

class JokeViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var punchLine = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = punchLine
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

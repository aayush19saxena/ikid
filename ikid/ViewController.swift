//
//  ViewController.swift
//  ikid
//
//  Created by Aayush  Saxena on 2/4/18.
//  Copyright © 2018 Aayush  Saxena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var punchLine = ""
    fileprivate var jokeViewController : JokeViewController!
    
    fileprivate func jokeBuilder() {
        if jokeViewController == nil {
            jokeViewController = storyboard?.instantiateViewController(withIdentifier: "Joke")
                as! JokeViewController!
        }
    }
    
    @IBAction func sendJoke(_ sender: UIBarButtonItem) {
        switch sender.tag {
        case 1:
            label.text = "What did the pot eat for it's birthday?"
        case 2:
            label.text = "What kind of a car does an egg drive?"
        case 3:
            label.text = "What did the salt say to the pepper?"
        default: label.text = "An error occurred"
        // catch you next.. seasoning
        }
        createButton()
    }
    
    @objc func createButton() {
        let button = UIButton(frame: CGRect(x: 120, y: 400, width: 100, height: 50))
        button.backgroundColor = .blue
        button.setTitle("What?", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    
    @objc func buttonAction(sender: UIButton!) {
        sendPunchLine()
    }
    
    func sendPunchLine() {
        jokeBuilder()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


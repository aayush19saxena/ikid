//
//  MainViewController.swift
//  ikid
//
//  Created by Aayush  Saxena on 2/5/18.
//  Copyright © 2018 Aayush  Saxena. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var punchLine = ""
    
    
    @IBAction func sendJoke(_ sender: UIBarButtonItem) {
        switch sender.tag {
        case 1:
            label.text = "What did the pot eat for it's birthday?"
            punchLine = "Pancakes"
        case 2:
            label.text = "What kind of a car does an egg drive?"
            punchLine = "A Yolkswagen"
        case 3:
            label.text = "What did the salt say to the pepper?"
            punchLine = "Catch you next seasoning"
        default: label.text = "An error occurred"
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
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let jokeViewController = storyBoard.instantiateViewController(withIdentifier: "Joke") as! JokeViewController
        jokeViewController.punchLine = punchLine
        self.present(jokeViewController, animated: false, completion: nil)
        UIView.commitAnimations()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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

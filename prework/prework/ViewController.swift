//
//  ViewController.swift
//  prework
//
//  Created by Tao Lin on 8/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var MainView: UIView!
    @IBOutlet weak var FixedLabel: UITextField!
    let DefaultText = "Hello from Chengtao!"
    @IBOutlet weak var TextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: Any) {
        print("Hello")
        TextLabel.textColor = UIColor.orange
    }
    
    var colorIndex = 0;
    @IBAction func Optional_1(_ sender: Any) {
        let colors = [UIColor.orange, UIColor.brown, UIColor.gray, UIColor.blue]
        if MainView.backgroundColor == colors.last {
            MainView.backgroundColor = UIColor.systemTeal
            colorIndex = 0
        } else {
            MainView.backgroundColor = colors[colorIndex]
            colorIndex += 1
        }
    }
    @IBAction func Optional_2(_ sender: Any) {
        TextLabel.text = "Goodbye 👋"
    }
    @IBAction func Optional_4(_ sender: Any) {
        if FixedLabel.text == "" {
            TextLabel.text = DefaultText
        } else {
            TextLabel.text = FixedLabel.text
        }
        FixedLabel.text = ""
    }
    
    // User can tap on the background view to reset all views to default settings.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        TextLabel.textColor = UIColor.black
        TextLabel.text = DefaultText
        MainView.backgroundColor = UIColor.systemTeal
        colorIndex = 0
    }
}


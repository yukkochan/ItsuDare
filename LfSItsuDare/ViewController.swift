//
//  ViewController.swift
//  LfSItsuDare
//
//  Created by Yukiko Kida on 2018/02/04.
//  Copyright © 2018年 Yukiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間前", "昨日", "今日"]
    let dokodeArray: [String] = ["山の上で", "アメリカで", "クラスで", "学校で"]
    let daregaArray: [String] = ["私が", "ママが", "先生が", "大統領が"]
    let doshitaArray: [String] = ["叫んだ", "演説した", "起こった", "料理した"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change (){
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index+1
        
        if index > 3 {
            index = 0
        }
        
    }
    
    @IBAction func recet (){
        itsuLabel.text = "____"
        dokodeLabel.text = "____"
        daregaLabel.text = "____"
        doshitaLabel.text = "____"
        
        index = 0
        
    }
    
    @IBAction func random (){
        
        let itsuIndex = Int(arc4random_uniform(4))
        let dokodeIndex = Int(arc4random_uniform(4))
        let daregaIndex = Int(arc4random_uniform(4))
        let doshitaIndex = Int(arc4random_uniform(4))
        
        NSLog("いつ: %d", itsuIndex)
        NSLog("どこで: %d", dokodeIndex)
        NSLog("だれが: %d", daregaIndex)
        NSLog("どうした: %d", doshitaIndex)
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
    }


}


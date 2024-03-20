//
//  ViewController.swift
//  new calculator
//
//  Created by Greens-MacMini on 15/06/23.
//  Copyright © 2023 Oneness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var add: UIButton!
    
    @IBOutlet weak var equal: UIButton!
    
    @IBOutlet weak var clear: UIButton!
    
    @IBOutlet weak var one: UIButton!
    
    var firstvalue: String?
    var act : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        var show = lbl.text
        
        if sender.tag == 41{
            lbl.text = show! + "1"
        }else if sender.tag == 42{
            lbl.text = show! + "2"
        }else if sender.tag == 43{
            lbl.text = show! + "3"
        }else if sender.tag == 44{
            lbl.text = show! + "4"
        }else if sender.tag == 45{
            lbl.text = show! + "5"
        }else if sender.tag == 46{
            lbl.text = show! + "6"
        }else if sender.tag == 47{
            lbl.text = show! + "7"
        }else if sender.tag == 48{
            lbl.text = show! + "8"
        }else if sender.tag == 49{
            lbl.text = show! + "9"
        }else if sender.tag == 40{
            lbl.text = show! + "0"
        }else if sender.tag == 50{
            lbl.text = show! + "00"
        }
        
    }
    
    @IBAction func operators(_ sender: UIButton) {
        
        if sender.tag == 11{
            
            
            firstvalue = lbl.text
            lbl.text = ""
            act = "+"
          
        }
        else if sender.tag == 12{
           
           firstvalue = lbl.text
             lbl.text = ""
            act = "-"
            
          
        }
        else if sender.tag == 13{
           
            firstvalue = lbl.text
             lbl.text = ""
            act = "*"
           
            
        }
        else if sender.tag == 14{
            
            firstvalue = lbl.text
             lbl.text = ""
         act = "/"
            
        }
        
    }
    
    @IBAction func ans(_ sender: UIButton) {
        
        
        
            
            if act == "+"{
                let result = Int(firstvalue!)! + Int(lbl.text!)!
                lbl.text = String(result)
            }
            else if act  == "-"{
            let result = Int(firstvalue!)! - Int(lbl.text!)!
                lbl.text = String(result)}
                
            else if act == "*"{
            let result = Int(firstvalue!)! * Int(lbl.text!)!
                lbl.text = String(result)}
                
            else if act == "/"{
            let result = Int(firstvalue!)! / Int(lbl.text!)!
                lbl.text = String(result)}
        }
        
        
        
    
    

    @IBAction func clear(_ sender: UIButton) {
        lbl.text = ""
    }
    
    

}


//
//  ViewController.swift
//  calculoIMC
//
//  Created by aref on 4/17/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfweight: UITextField!
    
    @IBOutlet weak var tfheight: UITextField!
    @IBOutlet weak var lbResults: UILabel!
    @IBOutlet weak var ivResults: UIImageView!
    @IBOutlet weak var viResult: UIView!
    
    var  imc :  Double = 0
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        if let weight =  Double(tfweight.text!) , let height = Double (tfheight.text!){
            imc = weight / (height * height)
            showResults()
        }
        
        
        
    }
    func showResults(){
        var result : String = " "
        var image : String = " "
        switch imc {
        case 0..<16:
            result = "magreza"
            image = "abaixo "
            
        case 16..<18.5:
            result = "abaixo do peso"
            image = "abaixo"
            
        case 18.5..<25:
            result = "peso ideal"
            image = "ideal"
            
        case 25..<30:
            result = "sobrepeso"
            image = "sobre"
        default:
            result = "obesidade"
            image = "obesidade"
        }
        lbResults.text = result
        ivResults.image = UIImage(named: image)
        viResult.isHidden = false
    }
}


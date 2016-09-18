//
//  ViewController.swift
//  calculadora
//
//  Created by Asistente de Edicion 1 on 08/03/16.
//  Copyright © 2016 Asistente de Edicion 1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        labelResult.text = "\(result)";
    }



    @IBOutlet weak var labelResult: UILabel!
    
    
    //declaracion de variables
    var result: Float = 0;
    
    var actualNum: Float = 0;
    
    var primerNum: Float = 0;
    
    var actualOp: String = "=";
    
    
    @IBAction func num(sender: UIButton) {
        
        //obtenemos el nombre de la etiqueta del boton y lo convertimos a entero y a float
        //se multiplica por  10 para poder capturar un mismo numero mas de una vez 
        actualNum = actualNum * 10  + Float( Int (sender.titleLabel!.text!)! );
        
        labelResult.text = "\(actualNum)";
        
    }
    

    @IBAction func clear(sender: UIButton) {
        
        result = 0.0;
        actualNum = 0.0;
        labelResult.text = "\(result)";
        
    }
    
    
    @IBAction func op(sender: UIButton) {
        
        //obtenemos la operacion actual
       // actualOp = String( sender.titleLabel?!.text!);
        
        actualOp = String( sender.titleLabel!.text!);
        
        print(  actualOp )
        
        //guardamos el primer numero 
        primerNum = actualNum;
        
        actualNum = 0;
        
    }
    
    
    @IBAction func resultFinal(sender: AnyObject) {
        
        print("operacion actual")
        
        switch  actualOp  {
        case "+":
            print("suma")
            result = primerNum + actualNum;
            labelResult.text = "\(result)";
            break
        case "-":
            print("resta")
            result = primerNum - actualNum;
            labelResult.text = "\(result)";
            break
        case "*":
            print("multiplicacion")
            result = primerNum * actualNum;
            labelResult.text = "\(result)";
            break
        case "/":
            print("divicion")
            result = primerNum / actualNum;
            labelResult.text = "\(result)";
            break
        case " = " :
            print("MAL XD")
            
        default : print(" no hay op0eracion")
        }
        
        
    }
    
 
}


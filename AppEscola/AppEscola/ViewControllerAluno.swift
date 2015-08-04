//
//  ViewControllerAluno.swift
//  AppEscola
//
//  Created by Wesllei on 29/07/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class ViewControllerAluno: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet weak var btEscolherEscola: UIButton!

    @IBOutlet weak var pickerViewEscla: UIPickerView!
    
    @IBOutlet weak var texteFieldMatricula: UITextField!
    
    @IBOutlet weak var textFieldNome: UITextField!
    
    @IBOutlet weak var lbAluno: UILabel!

    
    var alunos = ["Wesllei", "Kallaham"]
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return alunos.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return alunos[row]
    }
    
    
    
    @IBAction func btEscolherEscola(sender: AnyObject) {
       // pickerViewEscla.hidden = false
        //pickerViewEscla.alpha == 0
        
        if (pickerViewEscla.alpha == 1){
            pickerViewEscla.alpha = 0
             pickerViewEscla.hidden = true
            lbAluno.hidden = false
        }else{
            pickerViewEscla.alpha = 1
            pickerViewEscla.hidden = false
            lbAluno.hidden = true
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

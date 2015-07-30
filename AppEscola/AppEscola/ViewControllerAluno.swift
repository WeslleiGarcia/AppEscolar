//
//  ViewControllerAluno.swift
//  AppEscola
//
//  Created by Wesllei on 29/07/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class ViewControllerAluno: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    @IBOutlet weak var viewDropDown: UIView!
    
    @IBOutlet weak var btEscolherEscola: UIButton!

    @IBOutlet weak var pickerViewEscla: UIPickerView!
    
    @IBOutlet weak var texteFieldMatricula: UITextField!
    
    @IBOutlet weak var textFieldNome: UITextField!
    
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
        if viewDropDown.alpha == 1{
            viewDropDown.alpha = 0
            viewDropDown.hidden = true
        }else{
            viewDropDown.alpha = 1
            viewDropDown.hidden = false
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

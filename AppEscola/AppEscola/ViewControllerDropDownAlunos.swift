//
//  ViewControllerDropDownAlunos.swift
//  AppEscola
//
//  Created by Wesllei on 30/07/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class ViewControllerDropDownAlunos: ViewController, UIPickerViewDataSource, UIPickerViewDelegate  {
    
    @IBOutlet weak var pickerViewEscla: UIPickerView!
    
    
    
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

}

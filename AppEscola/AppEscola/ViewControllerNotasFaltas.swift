//
//  ViewControllerNotasFaltas.swift
//  AppEscola
//
//  Created by Wesllei on 29/07/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class ViewControllerNotasFaltas: UIViewController {

    @IBOutlet weak var segmentNotasFaltas: UISegmentedControl!
    
    @IBOutlet weak var viewFaltas: UIView!
    
    @IBOutlet weak var viewNotas: UIView!
    
    var notas : [Float] = [5.5, 8.0, 7.5, 8.0]
    
    
    
    
    
    
    
    @IBAction func segmentNotasFaltas(sender: AnyObject) {
        
        switch segmentNotasFaltas.selectedSegmentIndex{
            
        case 0:
            print("escolheu Notas")
            viewNotas.alpha = 1
            viewFaltas.alpha = 0
            //viewFaltas.hidden = true
            
        case 1:
           print("escolheu Faltas")
           viewNotas.alpha = 0
            viewFaltas.alpha = 1
            //viewNotas.hidden = true
            
        default:
            break;
            
        }

    }
}


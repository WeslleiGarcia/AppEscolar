//
//  ViewControllerPerfil.swift
//  AppEscola
//
//  Created by Wesllei on 29/07/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class ViewControllerPerfil: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imagePerfil: UIImageView!
    
    
    @IBAction func btCamera(sender: AnyObject) {
        
        let picker = UIImagePickerController()
        
        picker.delegate = self
        //picker.sourceType = .Photolibrary
        
        presentViewController(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imagePerfil.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

   
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

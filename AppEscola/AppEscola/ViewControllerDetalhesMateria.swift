//
//  ViewControllerDetalhesMateria.swift
//  AppEscola
//
//  Created by Wesllei on 29/07/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class ViewControllerDetalhesMateria: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableViewDetalheMaterias: UITableView!
    
    
    
    var assunto = ["Assunto1", "Assunto2", "Assunto3"]
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return assunto.count
    }
    
    //
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellNotificacoes", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = assunto[indexPath.row]
        // cell.imageView?.image = image
        
        return cell
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

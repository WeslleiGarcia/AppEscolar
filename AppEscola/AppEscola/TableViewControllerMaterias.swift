//
//  TableViewControllerMaterias.swift
//  AppEscola
//
//  Created by Wesllei on 29/07/15.
//  Copyright © 2015 Wesllei. All rights reserved.
//

import UIKit

class TableViewControllerMaterias: UITableViewController {
    
    var materias = ["Português", "Matemática", "Física"]
    var professores = ["Joana Kelly", "Caio Cesar", "Luciano Amazonas"]
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return materias.count
    }
    
    //
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellMaterias", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = materias[indexPath.row]
        cell.detailTextLabel?.text = professores[indexPath.row]
       // cell.imageView?.image = image
        
        return cell
    }
    
    //tableView Optional
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        section == 0
        
        return "Matérias"
        
    }
    
    //Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
//                if segue.identifier == "detailMaterias"{
//                    let row = tableView.indexPathForCell(sender as! UITableViewCell)?.row
//                    (segue.destinationViewController as! ViewControllerDetalhesMateria).materias = materias  //ViewControllerDetalheMaterias).aluno = aluno//.[row!]
//                }
        
    }






}

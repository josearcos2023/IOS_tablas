//
//  TableViewController.swift
//  TablasArcos
//
//  Created by Mac13 on 13/04/24.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var Tabla: UITableView!
    
    var contenidoCeldas = ["Usando", "TableView", "en", "aplicativo", "iOS"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Tabla.dataSource = self
        Tabla.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "secondSegue", sender: contenidoCeldas[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondSegue" {
            let secondView: DeviceViewController = segue.destination as! DeviceViewController
            secondView.element = sender as? String
        }
    }
}

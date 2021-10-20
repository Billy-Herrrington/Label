//
//  ViewController.swift
//  Application
//
//  Created by mai on 07.10.2021.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var table: UITableView!
    
    var models = [MyRemider]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        table.delegate = self
//        table.dataSource = self
    }
    
//    @IBAction func didTapAdd() {
//        // show add vc
//    }
    
}

//extension ViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = models[indexPath.row].title
//
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return models.count
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//}


struct  MyRemider {
    let title: String
    let picker: String
    let identifier: String
}

//
//  ViewController.swift
//  ZooApp
//
//  Created by vigneswaran on 19/02/18.
//  Copyright © 2018 vigneswaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tvListAnimal: UITableView!
    
    var animalType = ["Killer","Not a killer"]
    var listOfKillerAnimal = [Animal]()
    var listOfNotKillerAnimal = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        listOfNotKillerAnimal.append(Animal(name:"Baboon", des:"Baboon lives in forest .......", image:"baboon"))
        listOfNotKillerAnimal.append(Animal(name:"Bulldog", des:"Bulldog lives in forest .......", image:"bulldog"))
        listOfKillerAnimal.append(Animal(name:"Panda", des:"Panda lives in forest .......", image:"panda"))
        listOfNotKillerAnimal.append(Animal(name:"Swallow Bird", des:"swallow_bird lives in forest .......", image:"swallow_bird"))
        listOfKillerAnimal.append(Animal(name:"White Tiger", des:"white tiger lives in forest .......", image:"white_tiger"))
        listOfNotKillerAnimal.append(Animal(name:"Zebra", des:"Zebra lives in forest .......", image:"zebra"))
        
        tvListAnimal.delegate = self
        tvListAnimal.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return animalType[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return listOfKillerAnimal.count
        }else{
            return listOfNotKillerAnimal.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellAnimal: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellAnimal", for: indexPath) as! TableViewCell
        
        if indexPath.section == 0 {
            cellAnimal.setAnimal(animal: listOfKillerAnimal[indexPath.row])
        }else{
            cellAnimal.setAnimal(animal: listOfNotKillerAnimal[indexPath.row])
        }
        return cellAnimal
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            print(listOfKillerAnimal[indexPath.row])
            listOfKillerAnimal.append(listOfKillerAnimal[indexPath.row])
        }else{
            print(listOfNotKillerAnimal[indexPath.row])
            listOfNotKillerAnimal.append(listOfNotKillerAnimal[indexPath.row])
        }
        
        tvListAnimal.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


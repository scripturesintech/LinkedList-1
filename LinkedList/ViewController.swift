//
//  ViewController.swift
//  LinkedList
//
//  Created by Roopesh,Tripathi on 01/05/17.
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myList = LinkedList<String>()
        myList.insert(data: "40")
		myList.insert(data: "30")
		myList.insert(data: "20")
		myList.insert(data: "10")
		myList.insertAtNthNode(data: "35", n: 4)
		myList.deleateNthNode(n: 4)
        myList.printLinkedList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


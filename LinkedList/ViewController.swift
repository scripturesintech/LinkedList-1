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
        
       let myList = LinkedList<Int>()
myList.insert(data: 40)
myList.insert(data: 30)
myList.insert(data: 20)
myList.insert(data: 10)
myList.printList()
print("\n")

myList.insert(at: 2, data: 15)
myList.insert(at: 1, data: 5)
myList.insert(at: 5, data: 25)

myList.delete(at: 1)

print("Print normal list")
myList.printList()

myList.reverse()

print("\n")
print("Print reversed list")
myList.printList()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


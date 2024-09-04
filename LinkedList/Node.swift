//
//  Node.swift
//  LinkedList
//
//  Created by apple on 01/05/17.
//
//

import UIKit

class Node<T> {
    var data: T?
    var next: Node?
    
    init(data: T? = nil, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

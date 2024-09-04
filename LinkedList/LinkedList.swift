//
//  LinkedList.swift
//  LinkedList
//
//  Created by Roopesh,Tripathi on 01/05/17.
//
//
class LinkedList<T: Equatable> {
    private var head: Node<T>?

    func insert(data: T) {
        head = Node(data: data, next: head)
    }

    func insert(at index: Int, data: T) {
        if index == 1 {
            insert(data: data)
            return
        }
        
        var temp = head
        for _ in 0..<index-2 {
            temp = temp?.next
        }
        temp?.next = Node(data: data, next: temp?.next)
    }

    func delete(at index: Int) {
        guard var temp = head else { return }
        
        if index == 1 {
            head = temp.next
            return
        }
        
        for _ in 0..<index-2 {
            temp = temp.next!
        }
        
        let temp1 = temp.next
        temp.next = temp1?.next   
    }
    
    func reverse() {
      var prev: Node<T>? = nil
      var current = head
      var next: Node<T>? = nil
    
      while current != nil {
        next = current?.next    // Store the next node
        current?.next = prev    // Reverse the current node's pointer
        prev = current         // Move the prev pointer forward
        current = next         // Move the current pointer forward
    }
    
    head = prev             // Update the head to the new front of the list
}

    func printList() {
        var current = head
        while let data = current?.data {
            print(data)
            current = current?.next
        }
    }
}





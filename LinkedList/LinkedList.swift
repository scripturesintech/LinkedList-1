//
//  LinkedList.swift
//  LinkedList
//
//  Created by Roopesh,Tripathi on 01/05/17.
//
//

import UIKit

class LinkedList <T: Equatable> {
	
	var head = Node<T>()
	
	
	// Insert Node at begning of List
	func insert (data: T) {
		
		let newNode = Node<T>()
		newNode.data = data
		newNode.next = head;
		head = newNode;
	}
	
	// Insert Node at nth postion of List
	func insertAtNthNode (data : T, n : Int){
		
		let newNode = Node<T>()
		newNode.data = data
		newNode.next = nil
		
		if( n == 1){
			
			newNode.next = head
			head = newNode
			return
		}
		
		var temp : Node! = head
		for _ in 0 ..< n-2 {
			
			temp = temp.next
		}
		
		newNode.next = temp.next
		temp.next = newNode
		
	}
	
	// Delete Node from nth postion of List
	func deleateNthNode(n : Int){
		
		var temp : Node! = head
		
		if (n == 1){
			
			head = temp.next!
			temp = nil
			return
		}
		
		for _ in 0 ..< n-2 {
			
			temp = temp.next
		}
		
		var temp1 : Node! = temp.next
		temp.next = temp1.next
		temp1 = nil
		
	}
	
	
	// Print elements in Linkedlist
	
	func printLinkedList (){
		
		var temp : Node! = head
		
		while temp != nil && temp!.data != nil {
			
			print(" \(temp!.data!)")
			temp = temp!.next
		}
	}
	
	
}



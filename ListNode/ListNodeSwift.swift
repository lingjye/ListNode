//
//  ListNodeSwift.swift
//  ListNode
//
//  Created by txooo on 2019/1/3.
//  Copyright © 2019 txooo. All rights reserved.
//

import Foundation

private class ListNode {
    public var val:Int = 0
    public var next:ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class ListNodeSwift: NSObject {
    
    override init() {
        super.init()
    }
    
    @objc(runNode)
    public func run() -> Void {
        let l1 = ListNode(5)
        let l2 = ListNode(3)
        let l3 = ListNode(4)
        l2.next = l1
        l3.next = l2
        
        let l4 = ListNode(7)
        let l5 = ListNode(2)
        let l6 = ListNode(9)
        let l7 = ListNode(7)
        
        l5.next = l4
        l6.next = l5
        l7.next = l6;
        
        var lsum = self.addTwoNumbers(l3, l7)
        
        while (lsum.next != nil) {
            print(lsum.val)
            lsum = lsum.next!
        }
    }
    
    private func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode {
        let result = ListNode(0)
        var p1 = l1, p2 = l2, current = result
        var carray:Int = 0
        
        while (p1 != nil || p2 != nil) {
            let x = p1?.val ?? 0
            let y = p2?.val ?? 0
            
            let sum = x + y + carray
            carray = sum / 10
            
            current.val = sum % 10
            current.next = ListNode(0)
            current = current.next!
            
            if (p1 != nil) {
                p1 = p1?.next
            }
            if (p2 != nil) {
                p2 = p2?.next
            }
            
        }
        if carray > 0 {
            current.val = carray
            current.next = ListNode(0)
        }
        
        return result
    }
    
}

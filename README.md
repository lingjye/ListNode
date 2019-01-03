# 算法:求两数之和
###要求:
给定2个非空链表,链表中分别存储着逆序的正整数.将这两个整数相加, 并按同样的方式返回一个逆序的链表.

#####例如:
```
输入: (2 -> 4 -> 3) + (5 -> 6 -> 4)
输出: 7 -> 0 -> 8
原因: 342 + 465 = 807.
```

###oc参考代码:
```
struct ListNode {
    int val;
    struct ListNode *next;
};

struct ListNode *addTwoNumbers(struct ListNode *l1, struct ListNode *l2) {
    struct ListNode *result = (struct ListNode *)malloc(sizeof(struct ListNode));
    result -> next = NULL;
    struct ListNode *p = l1, *q = l2, *current = result;
    
    int carry = 0;
    while (p != NULL || q != NULL || carry) {
        int x = (p != NULL) ? p -> val : 0;
        int y = (q != NULL) ? q -> val : 0;
        
        int sum = carry + x + y;
        carry = sum / 10;
        
        current -> next = (struct ListNode *)malloc(sizeof(struct ListNode));
        current -> next -> next = NULL;
        current -> val = sum % 10;
        NSLog(@"sum=%d", current -> val);
        current = current -> next;
        
        if (p != NULL) {
            p = p -> next;
        }
        if (q != NULL) {
            q = q -> next;
        }
    }
    return result;
}
```

###swift参考代码:
```
private class ListNode {
    public var val:Int = 0
    public var next:ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

private func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode {
    let result = ListNode(0)
    var p1 = l1, p2 = l2, current = result
    var carray:Int = 0
    
    while (p1 != nil || p2 != nil || carray > 0) {
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
    return result
}
```
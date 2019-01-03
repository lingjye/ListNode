//
//  main.m
//  ListNode
//
//  Created by txooo on 2018/12/24.
//  Copyright © 2018 txooo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode-Swift.h"

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        struct ListNode *l1 = (struct ListNode *)malloc(sizeof(struct ListNode));
        struct ListNode *l2 = (struct ListNode *)malloc(sizeof(struct ListNode));
        struct ListNode *l3 = (struct ListNode *)malloc(sizeof(struct ListNode));
        struct ListNode *l4 = (struct ListNode *)malloc(sizeof(struct ListNode));
        struct ListNode *l5 = (struct ListNode *)malloc(sizeof(struct ListNode));
        struct ListNode *l6 = (struct ListNode *)malloc(sizeof(struct ListNode));
        struct ListNode *l7 = (struct ListNode *)malloc(sizeof(struct ListNode));
        l1 -> val = 5;
        l1 -> next = NULL;
        
        l2 -> val = 3;
        l2 -> next = l1;

        l3 -> val = 4;
        l3 -> next = l2;
        
        l4 -> val = 7;
        l4 -> next = NULL;
        
        l5 -> val = 2;
        l5 -> next = l4;

        l6 -> val = 9;
        l6 -> next = l5;
        
        l7 -> val = 8;
        l7 -> next = l6;
        
        
        struct ListNode *lsum = addTwoNumbers(l3, l7);
        while (lsum -> next) {
            NSLog(@"sum=====%d", lsum -> val);
            lsum = lsum -> next;
        }
        
        ListNodeSwift *swiftNode = ListNodeSwift.alloc.init;
        [swiftNode runNode];
    }
    
    return 0;
}




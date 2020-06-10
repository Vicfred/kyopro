# unihernandez22
# https://leetcode.com/problems/remove-linked-list-elements
# implementation

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def removeElements(self, head: ListNode, val: int) -> ListNode:
        x = head
        while x and x.val == val:
            x = x.next
        if not x: return None
        last = x
        i = x.next
        while i:
            if i.val == val:
                last.next = i.next
            else:
                last = i
            i = i.next
        return x

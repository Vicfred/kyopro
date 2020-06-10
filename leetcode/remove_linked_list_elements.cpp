// Vicfred
// https://leetcode.com/problems/remove-linked-list-elements/
/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    ListNode* removeElements(ListNode* head, int val) {
        if(head == nullptr)
            return nullptr;
        while(head->val == val) {
            if(head->next == nullptr)
                return nullptr;
            head = head->next;
        }
        auto prev = head;
        for(auto cur = head; cur != nullptr; cur = cur->next) {
            if(cur->val == val) {
                prev->next = cur->next;
            } else {
                prev = cur;
            }
        }
        return head;
    }
};

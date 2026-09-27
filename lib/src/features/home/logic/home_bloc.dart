bool isValid(String s) {
  String sample = s;
  bool loop = true;
  while (loop) {
    loop = false;
    if (sample.contains("()")) {
      sample = sample.replaceAll("()", "");
      loop = true;
    }
    if (sample.contains("[]")) {
      sample = sample.replaceAll("[]", "");
      loop = true;
    }
    if (sample.contains("{}")) {
      sample = sample.replaceAll("{}", "");
      loop = true;
    }
  }
  return sample.isEmpty;
}


//  * Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null) {
      return list2;
    }
    else if (list2 == null) {
      return list1;
    }

    ListNode? list1Pref = list1;
    ListNode? list2Pref = list2;
    ListNode? resultRun; 
    ListNode? result;

    while (list1Pref != null && list2Pref != null) {
      ListNode? smallerNode;
      if (list1Pref.val < list2Pref.val) {
        smallerNode = ListNode(list1Pref.val, list1Pref.next);
        list1Pref = list1Pref.next;
      }
      else {
        smallerNode = ListNode(list2Pref.val, list2Pref.next);
        list2Pref = list2Pref.next;
      }

      if (result == null) {
        result = smallerNode;
        resultRun = result;
      } else {
        resultRun?.next = smallerNode;
        resultRun = resultRun?.next;
      }
    }

    if (list1Pref != null) {
      resultRun?.next = list1Pref;
    }
    else {
      resultRun?.next = list2Pref;
    }

    return result;
  }
}

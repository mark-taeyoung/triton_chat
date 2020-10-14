class Node<T> {
  T value;
  Node<T> next;

  Node(T value, Node<T> next) {
    this.value = value;
    this.next = next;
  }

  T getValue() {
    return this.value;
  }

  Node<T> getNext() {
    return this.next;
  }

  void setValue(T value) {
    this.value = value;
  }

  void setNext(Node<T> next) {
    this.next = next;
  }
}

class LinkedList<T> {
  Node<T> head;
  Node<T> current;
  int length;

  LinkedList() {
    this.head = null;
    this.current = null;
    this.length = 0;
  }

  Node<T> appendFromHead(T value) {
    if (this.head == null) {
      this.head = new Node(value, null);
      this.current = this.head;
    } else {
      Node<T> temp = this.head;
      this.head = new Node(value, null);
      this.head.setNext(temp);
      temp = null;
    }
    this.length++;

    return this.head;
  }

  Node<T> appendFromRear(T value) {
    if (this.head == null) {
      this.head = new Node(value, null);
      this.current = this.head;
    } else {
      this.current.next = new Node(value, null);
      this.current = this.current.next;
    }
    this.length++;

    return this.current;
  }

  Node<T> getHead() {
    return this.head;
  }

  Node<T> getCurrent() {
    return this.current;
  }

  int getLength() {
    return this.length;
  }

  void setHead(Node<T> node) {
    this.head = node;
  }

  void setCurrent(Node<T> node) {
    this.current = node;
  }

  void setLength(int count) {
    this.length = count;
  }

  void printList() {
    Node<T> cur = this.head;
    while (cur != null) {
      print(cur.value);
      cur = cur.next;
    }
  }
}

/*
void main() {
  LinkedList<String> list = new LinkedList();
  list.appendFromRear("Hello!");
  list.appendFromRear("WORLD!");
  list.appendFromHead("Fuck you!");
  list.printList();
  list.appendFromHead("Shut up!");
  list.appendFromRear("Crazy WORLD!");
  list.printList();
}
*/

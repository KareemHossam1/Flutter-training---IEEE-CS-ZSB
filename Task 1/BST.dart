class Node{
    var data;
    var left = null;
    var right = null;
    Node(this.data);
}
class BST{
    Node root;
    BST(var data){
        this.root = Node(data);
    }
    void insert(var new_value){
        insert_helper(this.root , new_value);
    }
    void insert_helper(Node current, var new_value){
        if (current.data > new_value){
            if (current.left){
                insert_helper(current.left, new_value);
            }
            else{
                current.left = Node(new_value);
            }
        }
        else if(current.data < new_value){
            if (current.right){
                insert_helper(current.right, new_value);
            }
            else{
                current.right = Node(new_value);
            }
        }
        else{
            print('Wrong value');
        }
    }

}
void main() {
}

void main() {
    // Dart Lists
    var myList = [1, 2, 3];

    myList[0];


    // Change an Item
    myList[1] = 100;


    // Create an Empty List
    var emptyList = [];
    


    // Add to empty List
    emptyList.add(4);


    // Add multiple to empty List
    emptyList.addAll([1, 2, 3, 4]);


    // Insert at specific position (position, item)
    emptyList.insert(1, 500);// insert single item to a position
   


    // Insertmany
     emptyList.insertAll(4, [8, 9, 10]);// insert many items to a specific location


    //  Mixed Lists
    var mixedLists = [1, 2, 4, "josh", "fav"];
    mixedLists.insert(3, "hello");

    // Remove From List
    mixedLists.remove("josh");


    // Remove from specific Location
    mixedLists.removeAt(2);


    print(mixedLists);
}
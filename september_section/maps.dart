void main(){
  //Map

  /**
   {
   'key': 'value'}, // key value pair
   'key2': 'value'
   */

  Map<String, int> marks = {
    'Joshua': 20,
    'Chinedu': 50,
    'Ozibo': 10,
  };

  // print(marks['Josh']?.isEven);

  // Add to a map
 marks['Joshua'] = 200;
  // update
   marks['Ozibo'] = 200;

  //  remove
  marks.remove('Joshua');

  // add all 
  marks.addAll({
    'Dad': 30,
    'Mum': 600,
  });


 Map<String, int> comb = {
  "Hoho": 500,
  "Jojo": 400,
 };
  // loops in maps
  for(int i = 0; i < marks.length; i++){
    // print(marks.values);
  }

  marks.forEach((String, int) {
    // print('$String : $int');
  });

}
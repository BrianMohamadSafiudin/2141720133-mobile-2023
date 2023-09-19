void main() {
  var list1 = [1, 2, null];
  print(list1);
  
  var list3 = [0, ...list1];
  print(list3.length);
  
  var nim = '2141720133'; 
  var list4 = [...nim.split('')];
  print(list4);

  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var login = 'Manager'; 
  var nav2 = ['Home', 'Furniture', 'Plants'];
  
  if (login == 'Manager') {
    nav2.add('Inventory');
  }
  
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}


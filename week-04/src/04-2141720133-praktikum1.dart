// void main () {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

void main() {
  final List<String?> list = List.filled(5, null);
  list[1] = 'Brian Mohamad Safiudin';
  list[2] = '2141720133';

  for (int i = 0; i < list.length; i++) {
    print('Elemen index $i: ${list[i]}');
  }
}

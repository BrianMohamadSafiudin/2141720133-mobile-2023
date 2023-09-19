(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
void main() {
  var record = (10, 20);
  print('Sebelum pertukaran: $record');
  record = tukar(record);
  print('Setelah pertukaran: $record');

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ('Brian Mohamad Safiudin', 2141720133);
  print('Data mahasiswa: $mahasiswa');


  var mahasiswa2 = ('Brian Mohamad Safiudin', a: 2141720133, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Brian Mohamad Safiudin'
  print(mahasiswa2.a); // Prints 2141720133
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

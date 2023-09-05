// Null Safety

int? nullableValue; // Variabel dapat bernilai null
int nonNullableValue = 42; // Variabel tidak dapat bernilai null

// Late Variable

late String lateValue; // Variabel dapat diinisialisasi nanti
void initializeLateValue() {
  lateValue = 'Nilai sudah diinisialisasi';
}
void main() {
  initializeLateValue();
  print(lateValue); // Output: Nilai sudah diinisialisasi
}

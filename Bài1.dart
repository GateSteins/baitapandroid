void main() {
  List<int> danhsach = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print('Các số nhỏ hơn 5:');
  for (int so in danhsach) {
    if (so < 5) {
      print(so);
    }
  }
}

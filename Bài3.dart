import 'dart:io';

void main() {
  while (true) {
    print('\n=== CHƯƠNG TRÌNH XỬ LÝ CHUỖI ===');
    print('1. Đảo ngược chuỗi');
    print('2. Đếm số lần xuất hiện ký tự');
    print('3. Chuyển thành chữ hoa');
    print('0. Thoát');
    stdout.write('Nhập lựa chọn của bạn (0-3): ');

    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        handleReverseString();
        break;
      case '2':
        handleCountCharacters();
        break;
      case '3':
        handleUpperCase();
        break;
      case '0':
        print('Cảm ơn đã sử dụng chương trình!');
        return;
      default:
        print('Lựa chọn không hợp lệ, vui lòng thử lại!');
    }
  }
}

void handleReverseString() {
  stdout.write('Nhập chuỗi cần đảo ngược: ');
  var input = stdin.readLineSync() ?? '';
  print('Chuỗi đảo ngược: ${daoNguocChuoi(input)}');
}

void handleCountCharacters() {
  stdout.write('Nhập chuỗi cần đếm ký tự: ');
  var input = stdin.readLineSync() ?? '';
  var result = demSoLanXuatHien(input);
  print('Số lần xuất hiện từng ký tự:');
  result.forEach((char, count) => print("'$char': $count lần"));
}

void handleUpperCase() {
  stdout.write('Nhập chuỗi cần chuyển hoa: ');
  var input = stdin.readLineSync() ?? '';
  print('Chuỗi in hoa: ${chuyenThanhChuHoa(input)}');
}

String daoNguocChuoi(String input) => input.split('').reversed.join();

Map<String, int> demSoLanXuatHien(String input) {
  Map<String, int> dem = {};
  for (var kyTu in input.split('')) {
    dem[kyTu] = (dem[kyTu] ?? 0) + 1;
  }
  return dem;
}

String chuyenThanhChuHoa(String input) => input.toUpperCase();

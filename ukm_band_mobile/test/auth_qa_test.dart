import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ukm_band_mobile/services/api_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('QA Test - Pembatasan Login Admin Mobile', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    test('1. Uji Coba Login Admin: Harus Ditolak dengan Status 403', () async {
      final apiService = ApiService();

      try {
        await apiService.login(
          email: 'admin@ukmband.telkom',
          password: 'admin123',
        );
        fail('Seharusnya login admin ditolak, tetapi malah berhasil.');
      } on ApiException catch (e) {
        expect(e.statusCode, equals(403));
        expect(
          e.message,
          equals('Akses ditolak. Admin hanya dapat login melalui website.'),
        );
      }
    });

    test('2. Uji Coba Login User Biasa: Harus Sukses', () async {
      final apiService = ApiService();

      final auth = await apiService.login(
        email: 'user@example.com',
        password: 'password',
      );

      expect(auth.token, startsWith('local:'));
      expect(auth.user.role, equals('user'));
      expect(auth.user.email, equals('user@example.com'));
    });
  });
}

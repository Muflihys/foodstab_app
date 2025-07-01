import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUserCredential extends Mock implements UserCredential {}

void main() {
  late MockFirebaseAuth mockFirebaseAuth;

  setUp(() {
    // Inisialisasi mock objek
    mockFirebaseAuth = MockFirebaseAuth();

    // Register fallback value untuk menghindari error saat pengujian
    registerFallbackValue(FakeFirebaseAuthException());
  });

  group('Register', () {
    test('Registrasi berhasil dengan email dan password yang valid', () async {
      // Stub untuk registrasi berhasil
      when(() => mockFirebaseAuth.createUserWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenAnswer((_) async => MockUserCredential());

      // Panggil fungsi registrasi
      final result = await mockFirebaseAuth.createUserWithEmailAndPassword(
        email: 'test@example.com',
        password: 'password123',
      );

      // Verifikasi hasil
      expect(result, isA<UserCredential>());
      verify(() => mockFirebaseAuth.createUserWithEmailAndPassword(
            email: 'test@example.com',
            password: 'password123',
          )).called(1);
    });

    test('Registrasi gagal dengan email yang sudah digunakan', () async {
      // Stub untuk registrasi gagal dengan email yang sudah digunakan
      when(() => mockFirebaseAuth.createUserWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenThrow(FirebaseAuthException(
        code: 'email-already-in-use',
        message: 'Email sudah digunakan',
      ));

      // Panggil fungsi registrasi
      try {
        await mockFirebaseAuth.createUserWithEmailAndPassword(
          email: 'test@example.com',
          password: 'password123',
        );
        fail('FirebaseAuthException tidak dilempar');
      } catch (e) {
        // Verifikasi exception
        expect(e, isA<FirebaseAuthException>());
        expect((e as FirebaseAuthException).code, 'email-already-in-use');
      }

      // Verifikasi pemanggilan
      verify(() => mockFirebaseAuth.createUserWithEmailAndPassword(
            email: 'test@example.com',
            password: 'password123',
          )).called(1);
    });

    test('Registrasi gagal dengan password yang lemah', () async {
      // Stub untuk registrasi gagal dengan password yang lemah
      when(() => mockFirebaseAuth.createUserWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenThrow(FirebaseAuthException(
        code: 'weak-password',
        message: 'Password terlalu lemah',
      ));

      // Panggil fungsi registrasi
      try {
        await mockFirebaseAuth.createUserWithEmailAndPassword(
          email: 'test@example.com',
          password: 'short',
        );
        fail('FirebaseAuthException tidak dilempar');
      } catch (e) {
        // Verifikasi exception
        expect(e, isA<FirebaseAuthException>());
        expect((e as FirebaseAuthException).code, 'weak-password');
      }

      // Verifikasi pemanggilan
      verify(() => mockFirebaseAuth.createUserWithEmailAndPassword(
            email: 'test@example.com',
            password: 'short',
          )).called(1);
    });
  });
}

// Membuat fake untuk FirebaseAuthException karena mocktail memerlukan fallback value
class FakeFirebaseAuthException extends Fake implements FirebaseAuthException {}

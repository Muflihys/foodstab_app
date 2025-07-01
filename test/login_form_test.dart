import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock Classes
class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUserCredential extends Mock implements UserCredential {}

void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late MockUserCredential mockUserCredential;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockUserCredential = MockUserCredential();

    registerFallbackValue(MockUserCredential());
  });

  // Register fallback values untuk parameter method mock

  group('Login', () {
    test('Login berhasil dengan email dan password yang valid', () async {
      // Stub untuk login berhasil
      when(() => mockFirebaseAuth.signInWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenAnswer((_) async => mockUserCredential);

      // Call the login method
      final result = await mockFirebaseAuth.signInWithEmailAndPassword(
        email: 'test@example.com',
        password: 'password123',
      );

      // Verifikasi hasil
      expect(result, isA<UserCredential>());
      verify(() => mockFirebaseAuth.signInWithEmailAndPassword(
            email: 'test@example.com',
            password: 'password123',
          )).called(1);
    });

    test('Login gagal dengan password yang salah', () async {
      // Stub untuk login gagal
      when(() => mockFirebaseAuth.signInWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          )).thenThrow(FirebaseAuthException(
        code: 'wrong-password',
        message: 'Password salah',
      ));

      // Memanggil metode login dengan password salah
      expect(
        () async => await mockFirebaseAuth.signInWithEmailAndPassword(
          email: 'test@example.com',
          password: 'wrongpassword',
        ),
        throwsA(isA<FirebaseAuthException>()),
      );

      // Verifikasi
      verify(() => mockFirebaseAuth.signInWithEmailAndPassword(
            email: 'test@example.com',
            password: 'wrongpassword',
          )).called(1);
    });
  });
}

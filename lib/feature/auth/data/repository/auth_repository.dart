import "package:supabase_flutter/supabase_flutter.dart";

class AuthRepository {
  final SupabaseClient Supabase;

  AuthRepository(this.Supabase);

  Future<AuthResponse> Login({
    required String email,
    required String password,
  }) async {
    await Supabase.auth.signInWithPassword(email: email, password: password);
  }
}

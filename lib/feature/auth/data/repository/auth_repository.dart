import "package:supabase_flutter/supabase_flutter.dart";

class AuthRepository {
  final SupabaseClient supabase;

  AuthRepository(this.supabase);

  Future<AuthResponse> login ({
    required String email,
    required String password,
  }) async {
   return  await supabase.auth.signInWithPassword(email: email, password: password);
  }
}

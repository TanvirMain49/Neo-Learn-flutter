import 'package:supabase_flutter/supabase_flutter.dart';

class AuthServices {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<AuthResponse> signInWithEmailAndPassword(String email, String password) async {
    try{
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      return response;
    } on AuthException catch(err){
      throw err.message;
    } catch(err){
      throw "Something went wrong. Please try again.";
    }
  }

  Future<AuthResponse?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
      );
      return response;
    } on AuthException catch (e) {
      throw e.message;
    } catch (e) {
      throw "Something went wrong. Please try again.";
    }
  }


  Future<void> signOut() async {
    try {
      await _supabase.auth.signOut();
    } catch (e) {
      throw "Failed to sign out. Please try again.";
    }
  }
}

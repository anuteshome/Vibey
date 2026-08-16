import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/models/Attende/BookingModel.dart";

class BookRepsoitory {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<List<BookingModel>> getBooks() async {
    final response = await supabase.from("bookings").select(""" *, """);
  }
}

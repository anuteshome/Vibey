import "package:supabase_flutter/supabase_flutter.dart";
import "package:vibey/models/Attende/AttendeModel.dart";

class EventRepository {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<List<EventModel>> getEvents() async {
    final response = await supabase
        .from("events")
        .select("""
          *,
          ticket_types (*)
        """);

    final eventList = response as List<dynamic>;

    return eventList.map((eventJson) {
      return EventModel.fromJson(
        eventJson as Map<String, dynamic>,
      );
    }).toList();
  }
}
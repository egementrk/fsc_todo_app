import 'package:supabase/supabase.dart';

class SupabaseHandler {
  static const supabaseUrl = 'https://duixoceusxyjdqwsyrqy.supabase.co';
  static const supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzMjIzNjI4NCwiZXhwIjoxOTQ3ODEyMjg0fQ.LxOmrV17XN4LB3YE1GqABaQioIpr_82-CsWnrAohrMM';
  final supabaseClient = SupabaseClient(supabaseUrl, supabaseKey);

  addData(String taskValue, bool statusValue) {
    var response = supabaseClient.from('todos').insert(
      {'task': taskValue, 'status': statusValue},
    ).execute();
    print(response);
  }

  readData() async {
    var response = await supabaseClient.from('todos').select().order('task', ascending: true).execute();
    print(response);
    final dataList = response.data as List;
    return dataList;
  }

  updateData(int id, bool statusValue) async {
    var response = supabaseClient
        .from('todos')
        .update({
          'status': statusValue,
        })
        .eq('id', id)
        .execute();
    print(response);
  }

  deleteData(int id) {
    var response = supabaseClient.from('todos').delete().eq('id', id).execute();
    print(response);
  }
}

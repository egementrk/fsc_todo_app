import 'package:flutter/material.dart';
import 'package:supabase_flutter/components/context_extension.dart';
import 'package:supabase_flutter/components/supabase_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String todoValue;
  @override
  Widget build(BuildContext context) {
    SupabaseHandler supabaseHandler = SupabaseHandler();
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: supabaseHandler.readData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData == null && snapshot.connectionState == ConnectionState.none) {}
                  return ListView.builder(
                      itemCount: snapshot.data == null ? 0 : snapshot.data.length,
                      // itemCount: snapshot.data?.length == null ? 0 : snapshot.data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: context.paddingLow,
                          child: Card(
                            shadowColor: snapshot.data[index]['status'] ? Colors.white : Colors.grey,
                            color: snapshot.data[index]['status'] ? Colors.black38 : Colors.white,
                            child: Padding(
                              padding: context.paddingLow,
                              child: Row(
                                children: [
                                  Text(snapshot.data[index]['task']),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      supabaseHandler.updateData(
                                        snapshot.data[index]['id'],
                                        true,
                                      );
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.done),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      supabaseHandler.deleteData(snapshot.data[index]['id']);
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.delete),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
            Padding(
              padding: context.paddingMedium,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Enter todo task'),
                      onChanged: (value) {
                        todoValue = value;
                      },
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        todoValue == null ? 0 : supabaseHandler.addData(todoValue, false);
                        setState(() {});
                      },
                      icon: Icon(Icons.add))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

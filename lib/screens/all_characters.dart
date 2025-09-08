import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gsg_flutter/data/character_model.dart';
import 'package:gsg_flutter/widgets/character_widget.dart';
import 'package:http/http.dart' as http;

class AllCharacters extends StatefulWidget {
  const AllCharacters({super.key});

  @override
  State<AllCharacters> createState() => _MainAppState();
}

class _MainAppState extends State<AllCharacters> {
  List<CharacterModel> characters = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Characters'), backgroundColor: Colors.amber),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return CharacterWidget(model: characters[index]);
          },
          itemCount: characters.length,
        ),
      ),
    );
  }

  fetchData() async {
    var response = await http.get(
      Uri.parse('https://potterapi-fedeperin.vercel.app/en/characters'),
    );
    log(response.body); // json(string)
    var data = jsonDecode(response.body); // decoding
    // [{}] -> [ model ]
    for (Map map in data) {
      CharacterModel model = CharacterModel.fromJson(map);
      setState(() {
        characters.add(model);
      });
    }
  }
}

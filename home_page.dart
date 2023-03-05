import 'package:api/Model.dart';
import 'package:api/controller.dart';
import 'package:api/http_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('API'),
        ),
        body: FutureBuilder(
          future: NetWorkUtils().fetchAlbum(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data![index].title.toString()),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("some error");
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.model,
  });
  final Model model;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: model.id,
      itemBuilder: (context, index) {
        return Text(model.body.toString());
      },
    );
  }
}

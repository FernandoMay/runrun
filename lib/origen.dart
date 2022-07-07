import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:runrun/constants.dart';
import 'package:runrun/models.dart';
import 'package:runrun/services.dart';

class Origen extends StatefulWidget {
  const Origen({Key? key}) : super(key: key);

  @override
  State<Origen> createState() => _OrigenState();
}

class _OrigenState extends State<Origen> {
  late Future<List<Result>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          "",
          style: runrunH2White,
        ),
        backgroundColor: primaryColor.withOpacity(0.5),
        leading: const CircleAvatar(
          radius: 18,
          backgroundColor: secondaryColor,
          child: CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage("https://picsum.photos/180"),
          ),
        ),
      ),
      child: SafeArea(
        child: Center(
          child: FutureBuilder<List<Result>>(
            future: futureData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Result>? data = snapshot.data;
                return ListView.builder(
                    itemCount: data?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(data![index].toString()),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default show a loading spinner.
              return const CircularProgressIndicator(
                color: secondaryColor,
              );
            },
          ),
        ),
      ),
    );
  }
}

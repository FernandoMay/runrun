import 'package:flutter/cupertino.dart';
import 'package:runrun/constants.dart';
import 'package:runrun/origen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          "micamion",
          style: runrunH2White,
        ),
        backgroundColor: primaryColor,
        trailing: CupertinoContextMenu(
          actions: const [Text("Yes"), Text("No")],
          child: Icon(CupertinoIcons.doc),
        ),
      ),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: primaryColor,
              padding: EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Buenas noches"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CupertinoButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Origen",
                                style: runrunH3Black,
                              ),
                              Icon(
                                CupertinoIcons.bus,
                                color: textColor,
                              )
                            ],
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.all(8.0),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        CupertinoButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Destino",
                                style: runrunH3Black,
                              ),
                              Icon(
                                CupertinoIcons.bus,
                                color: textColor,
                              )
                            ],
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.all(8.0),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CupertinoContextMenu(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Ida",
                                style: runrunH2White,
                              ),
                              Icon(
                                CupertinoIcons.down_arrow,
                                color: bgLightColor,
                              )
                            ],
                          ),
                          actions: const [Text("Ida"), Text("Ida y Vuelta")],
                        ),
                        CupertinoContextMenu(
                          actions: const [
                            CupertinoAlertDialog(
                              content: Text("Pasajeros"),
                              actions: [
                                Text("Aplicar"),
                              ],
                            )
                          ],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "1 Adulto(s)",
                                style: runrunH2White,
                              ),
                              Icon(
                                CupertinoIcons.down_arrow,
                                color: bgLightColor,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    color: bgLightColor,
                    child: CupertinoDatePicker(onDateTimeChanged: (dt) {}),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CupertinoButton.filled(
                      child: Text("BUSCAR", style: runrunH4White),
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const Origen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

import 'dart:convert';

Response responseFromJson(String str) => Response.fromJson(json.decode(str));

String responseToJson(Response data) => json.encode(data.toJson());

class Response {
  Response({
    required this.error,
    this.message,
    required this.result,
  });

  bool error;
  dynamic message;
  List<Result> result;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        error: json["error"],
        message: json["message"],
        result:
            List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    required this.terminalId,
    required this.paisId,
    required this.terminalOrigen,
    required this.activo,
    required this.terminal,
    required this.pais,
    required this.origen,
  });

  int terminalId;
  int paisId;
  int terminalOrigen;
  bool activo;
  String terminal;
  String pais;
  String origen;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        terminalId: json["terminalID"],
        paisId: json["paisID"],
        terminalOrigen: json["terminalOrigen"],
        activo: json["activo"],
        terminal: json["terminal"],
        pais: json["pais"],
        origen: json["origen"],
      );

  Map<String, dynamic> toJson() => {
        "terminalID": terminalId,
        "paisID": paisId,
        "terminalOrigen": terminalOrigen,
        "activo": activo,
        "terminal": terminal,
        "pais": pais,
        "origen": origen,
      };
}

// enum Origen {
//   EMPTY,
//   POTOSI_POTOSI,
//   SANTA_CRUZ_DE_LA_SIERRA_SANTA_CRUZ,
//   TARIJA_TARIJA
// }

// final origenValues = EnumValues({
//   "": Origen.EMPTY,
//   "Potosi, Potosi": Origen.POTOSI_POTOSI,
//   "Santa Cruz de la Sierra, Santa Cruz":
//       Origen.SANTA_CRUZ_DE_LA_SIERRA_SANTA_CRUZ,
//   "Tarija, Tarija": Origen.TARIJA_TARIJA
// });

// enum Pais { BOLIVIA }

// final paisValues = EnumValues({"Bolivia": Pais.BOLIVIA});

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }

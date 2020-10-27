import 'package:http/http.dart' as http; // add the http plugin in pubspec.yaml file.

Future<List<List<String>>> sendSelect(String query) async {
  const ROOT = 'LINK TO THE CONFIG.PHP FILE THAT YOU UPLOADED ON THE WEB SERVER';
  var map = Map<String, dynamic>();
  map['key'] = "ENTER THE SECRET KEY THAT YOU GAVE IN THE PHP FILE";
  map['query'] = query;
  print(map['query']);
  final response = await http.post(ROOT, body: map);
  print(response.statusCode);
  if (200 == response.statusCode) {
    //This whole Code cnverts the response to a list
    List<List<String>> a = [];
    List<String> killme = [];
    String element = "";
    String changed = response.body.replaceAll("\n", "|");
    for (var i = 0; i < changed.length; i++) {
      if (changed[i] == "|") {
        killme.add(element);
        a.add(killme);
        killme = [];
        element = "";
      }
      else if (changed[i] == ",") {
        killme.add(element);
        element = "";
      }
      else {
        element = element + changed[i];
      }
    }
    a.removeAt(0);
    print(a);
    return a;
  }
}

Future<void> sendInsert(String query) async {
  const ROOT = 'LINK TO THE CONFIG.PHP FILE THAT YOU UPLOADED ON THE WEB SERVER';
  var map = Map<String, dynamic>();
  map['key'] = "ENTER THE SECRET KEY THAT YOU GAVE IN THE PHP FILE";
  map['query'] = query;
  print(map['query']);
  final response = await http.post(ROOT, body: map);
  print("${response.statusCode}" + " : " + response.body);
}

Future<void> sendUpdate(String query) async {
  const ROOT = 'LINK TO THE CONFIG.PHP FILE THAT YOU UPLOADED ON THE WEB SERVER';
  var map = Map<String, dynamic>();
  map['key'] = "ENTER THE SECRET KEY THAT YOU GAVE IN THE PHP FILE";
  map['query'] = query;
  print(map['query']);
  final response = await http.post(ROOT, body: map);
  print("${response.statusCode}" + " : " + response.body);

}

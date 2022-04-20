part of 'services.dart';

class ShowServices {
  static Future<List<ShowModel>>
  getListPokemon() async {
    var response =
    await http.get(Uri.parse('https://api.tvmaze.com/shows?page=1'));

    if (response.statusCode == 200) {
      var jsonObject = json.decode(response.body);

      return jsonObject
          .map<ShowModel>(
              (item) => ShowModel.fromJson(item))
          .toList();
    } else {
      return [];
    }
  }
}
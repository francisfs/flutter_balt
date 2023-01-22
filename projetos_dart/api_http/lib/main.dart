import 'package:http/http.dart' as http;

void main() async {
  final future = http.get(Uri.https('www.terra.com.'));
  future.then((response) {
    if (response.statusCode == 200) {
      print('pagina carregada com sucesso');
    }
    if (response.statusCode == 301) {
      print('pagina movida permanentemente');
    }
    if (response.statusCode == 404) {
      print('pagina não encontrada');
    }
    if (response.statusCode == 500) {
      print('erro interno no servidor');
    }
  });
}

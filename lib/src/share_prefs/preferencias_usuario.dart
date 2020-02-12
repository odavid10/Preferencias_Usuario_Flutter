import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';

class PreferenciasUsuario {

  static final PreferenciasUsuario _instancia = new Preferenciasusuario._internal();

  factory PreferenciasUsuario (){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // bool _colorSecundario;
  // int _genero;
  // String _nombre;

  //Get y Set de genero
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero (int value) {
    _prefs.setInt('genero', value)
  }

  //Get y Set de colorSecundario
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario (bool value) {
    _prefs.setBool('colorSecundario', value)
  }
 
  //Get y Set de nombreUsuario
  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario (bool value) {
    _prefs.setString('nombreUsuario', value)
  }
  
  //Get y Set de ultimaPagina
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina (bool value) {
    _prefs.setString('ultimaPagina', value)
  }

}
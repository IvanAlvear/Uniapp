import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // PaginaPrincipal
  {
    'bcvqhh58': {
      'es': 'UNIAPP',
      'en': '',
    },
    'g46houa8': {
      'es': 'INICIAR SESION',
      'en': '',
    },
    'mha9meu9': {
      'es': 'INICIA SESIÓN CON GOOGLE',
      'en': '',
    },
    'qc626fp8': {
      'es': 'Home',
      'en': '',
    },
  },
  // IniciarSesion
  {
    '5izh40m8': {
      'es': 'UNIAPP',
      'en': '',
    },
    'mnruucek': {
      'es': '\"Tu Éxito, Nuestra App: Uniendo Caminos \nen Unipaz\"\n',
      'en': '',
    },
    'ci69pqdc': {
      'es': 'Correo',
      'en': '',
    },
    'qxkfzcn9': {
      'es': 'Contraseña',
      'en': '',
    },
    'c1n5otkb': {
      'es': '¿Olvido su contraseña? ',
      'en': '',
    },
    'vy45c9c7': {
      'es': 'Ingresar',
      'en': '',
    },
    'ewt7kc8o': {
      'es': 'Home',
      'en': '',
    },
  },
  // MenuPrincipal
  {
    'zqk8uqks': {
      'es': '\"Tu Éxito, Nuestra App: Uniendo Caminos \nen Unipaz\"',
      'en': '',
    },
    'hfjbhbnp': {
      'es': 'Información Personal',
      'en': '',
    },
    'j2mhxf00': {
      'es': 'IVAN ALVEAR',
      'en': '',
    },
    'l1ex56kj': {
      'es': 'ivan.alvear@unipaz.edu.co',
      'en': '',
    },
    'jqkha15a': {
      'es': 'Mis Datos Personales',
      'en': '',
    },
    'mm5en16m': {
      'es': 'Docuemento:',
      'en': '',
    },
    'o26w84pn': {
      'es': 'Edad:',
      'en': '',
    },
    'xszwdits': {
      'es': 'Sexo:',
      'en': '',
    },
    'scxcv35v': {
      'es': 'Datos de Naciemento',
      'en': '',
    },
    'sj581afv': {
      'es': 'Fecha:',
      'en': '',
    },
    '5067yb0j': {
      'es': 'País:',
      'en': '',
    },
    'wf5vfbls': {
      'es': 'Provincia:',
      'en': '',
    },
    'cp73n8g4': {
      'es': 'Municipio:',
      'en': '',
    },
    'm1q8568u': {
      'es': 'Datos de la Carrera',
      'en': '',
    },
    '4no9idax': {
      'es': 'Carrera:',
      'en': '',
    },
    'sqtrokef': {
      'es': 'Semestre:',
      'en': '',
    },
    'mhe8c32p': {
      'es': 'Jornada:',
      'en': '',
    },
    'vw1g8p0s': {
      'es': 'Otros datos',
      'en': '',
    },
    'e6scfhqw': {
      'es': 'Correo:',
      'en': '',
    },
    '6ue0c1z6': {
      'es': 'Celular:',
      'en': '',
    },
    '515pi139': {
      'es': 'Editar',
      'en': '',
    },
    '5p771r0s': {
      'es': 'Home',
      'en': '',
    },
  },
  // Horario
  {
    'w679zwu2': {
      'es': '\"Tu Éxito, Nuestra App: Uniendo Caminos \nen Unipaz\"',
      'en': '',
    },
    'kbl3c9kk': {
      'es': 'Horario',
      'en': '',
    },
    '04vauka9': {
      'es': 'Instituto universitario de la Paz',
      'en': '',
    },
    '70psstfa': {
      'es': 'Nombre del estudiante',
      'en': '',
    },
    '5wcaypay': {
      'es': 'Carrera',
      'en': '',
    },
    'zup1ym8z': {
      'es': 'Curso calendario',
      'en': '',
    },
    'om0wi1q3': {
      'es': 'Secondary text',
      'en': '',
    },
    'khukhy85': {
      'es': 'Semestre',
      'en': '',
    },
    '2t4xh2us': {
      'es': 'Secondary text',
      'en': '',
    },
    '6crp8zlk': {
      'es': 'Lunes',
      'en': '',
    },
    'hen7qp6j': {
      'es': '19:00 - 22:00',
      'en': '',
    },
    'mgzaynsq': {
      'es': 'Gestion de recursos humanos',
      'en': '',
    },
    'grdbl6k6': {
      'es': 'N1-Grupo Teorico',
      'en': '',
    },
    '7907vh9e': {
      'es': 'Nocturno',
      'en': '',
    },
    'wopytf4d': {
      'es': 'Aula:',
      'en': '',
    },
    'ch8xlmph': {
      'es': 'Profe:',
      'en': '',
    },
    'zil3bcu5': {
      'es': '31 de julio del 2023 al 12 de diciembre del 2023',
      'en': '',
    },
    'a5gprtgm': {
      'es': 'Martes',
      'en': '',
    },
    'p4ak3lc5': {
      'es': '19:00 - 22:00',
      'en': '',
    },
    '7kuh6i03': {
      'es': 'Seguridad de Información',
      'en': '',
    },
    'p1e88va8': {
      'es': 'N1-Grupo Teorico',
      'en': '',
    },
    '3zar6515': {
      'es': 'Nocturno',
      'en': '',
    },
    '3ivhen9c': {
      'es': 'Aula:',
      'en': '',
    },
    'k861nqd7': {
      'es': 'Profe:',
      'en': '',
    },
    'l1hqqa0f': {
      'es': '31 de julio del 2023 al 12 de diciembre del 2023',
      'en': '',
    },
    '0vevn5bp': {
      'es': 'Miercoles',
      'en': '',
    },
    '6pl81mru': {
      'es': '18:00 - 22:00',
      'en': '',
    },
    'sg9cmeyu': {
      'es': 'Formulación y Evalución de proyectos',
      'en': '',
    },
    'xa6tdjut': {
      'es': 'N1-Grupo Teorico',
      'en': '',
    },
    'rg69ssjs': {
      'es': 'Nocturno',
      'en': '',
    },
    '6064o3w5': {
      'es': 'Aula:',
      'en': '',
    },
    'iaalrfn9': {
      'es': 'Profe:',
      'en': '',
    },
    '5bfcjd6j': {
      'es': '31 de julio del 2023 al 12 de diciembre del 2023',
      'en': '',
    },
    '7lfnaaw6': {
      'es': 'Jueves',
      'en': '',
    },
    'wp13yj54': {
      'es': '19:00 - 22:00',
      'en': '',
    },
    'kibdkuke': {
      'es': 'Desarrollo de aplicaciones moviles',
      'en': '',
    },
    'jn2u3ukc': {
      'es': 'N1-Grupo Teorico',
      'en': '',
    },
    'k11s01eg': {
      'es': 'Nocturno',
      'en': '',
    },
    '6vtc15yf': {
      'es': 'Aula:',
      'en': '',
    },
    'rupdo2pu': {
      'es': 'Profe:',
      'en': '',
    },
    'swzx4s7q': {
      'es': '31 de julio del 2023 al 12 de diciembre del 2023',
      'en': '',
    },
    'd1n91wbw': {
      'es': 'Viernes',
      'en': '',
    },
    'sdheax04': {
      'es': '19:00 - 22:00',
      'en': '',
    },
    'l63xabsv': {
      'es': 'Calidad del software',
      'en': '',
    },
    'zdonloe1': {
      'es': 'N1-Grupo Teorico',
      'en': '',
    },
    'pcwvnmtd': {
      'es': 'Nocturno',
      'en': '',
    },
    '0f7msskl': {
      'es': 'Aula:',
      'en': '',
    },
    'ecfvr8cv': {
      'es': 'Profe:',
      'en': '',
    },
    '97yah8y8': {
      'es': '31 de julio del 2023 al 12 de diciembre del 2023',
      'en': '',
    },
    '4egszeoq': {
      'es': 'Sabado',
      'en': '',
    },
    '9p9i91e7': {
      'es': '7:00 - 10:00',
      'en': '',
    },
    'fvgafowg': {
      'es': 'Informatica  Forence',
      'en': '',
    },
    'n3mzir2w': {
      'es': 'N1-Grupo Teorico',
      'en': '',
    },
    '43nh76ob': {
      'es': 'Nocturno',
      'en': '',
    },
    'psut77ct': {
      'es': 'Aula:',
      'en': '',
    },
    'wleumoy3': {
      'es': 'Profe:',
      'en': '',
    },
    'ozhu8p82': {
      'es': '31 de julio del 2023 al 12 de diciembre del 2023',
      'en': '',
    },
    'ofpmdzgn': {
      'es': 'Home',
      'en': '',
    },
  },
  // Notas
  {
    's6l19pmp': {
      'es': '\"Tu Éxito, Nuestra App: Uniendo Caminos \nen Unipaz\"',
      'en': '',
    },
    'ti6aekbu': {
      'es': 'Notas Parciales',
      'en': '',
    },
    '8liiuazf': {
      'es': 'Home',
      'en': '',
    },
  },
  // InfoUni
  {
    'nesorgzz': {
      'es': '\"Tu Éxito, Nuestra App: Uniendo Caminos \nen Unipaz\"',
      'en': '',
    },
    'smp1k5mw': {
      'es': 'INSTITUTO UNIVERSITARIO DE LA PAZ',
      'en': '',
    },
    'xo1b3xto': {
      'es': 'Unipaz',
      'en': '',
    },
    'vdtmplrt': {
      'es':
          'El Instituto Universitario de la Paz, es una Institución Universitaria, acorde con lo establecido en el literal b del artículo 16 de la Ley 30 de 1992, creada por decreto ordenanzal 0331 del 19 de noviembre de 1987. Es un establecimiento público de educación superior, de carácter académico, del orden departamental, con personería jurídica, autonomía administrativa y patrimonio independiente, adscrito a la Gobernación del Departamento de Santander y con domicilio principal en la ciudad de Barrancabermeja.\n\nUNIPAZ es una institución pública de educación superior con liderazgo social e identidad regional, comprometida en la búsqueda de la satisfacción del cliente y la formación integral de sus educandos, sustentada en la calidad de sus procesos, infraestructura adecuada, talento humano competente y la mejora continua como filosofía para la excelencia, propende por la formación de profesionales comprometidos con el desarrollo de la región y el país en diversos escenarios, contribuyendo desde la socialización de los saberes a la paulatina conformación de una nueva cultura en un contexto de profundos contrastes: una región de grandes riquezas naturales y humanas con la mayor parte de su población en condiciones deplorables de pobreza; una región del Magdalena Medio con comunidades que enfrentan niveles de violencia superiores a los de todo el país.',
      'en': '',
    },
    'u3lecm0q': {
      'es': 'Home',
      'en': '',
    },
  },
  // SobreNos
  {
    '14ndmdsh': {
      'es': '\"Tu Éxito, Nuestra App: Uniendo Caminos \nen Unipaz\"',
      'en': '',
    },
    '2uixqt6f': {
      'es': 'Sobre Nosotros',
      'en': '',
    },
    'x1b5bwry': {
      'es': 'Ingenieria Informatica ',
      'en': '',
    },
    'pybrwmta': {
      'es': 'CIPRIANO LOPEZ',
      'en': '',
    },
    'pi7lfx3z': {
      'es': 'Director de desarrollo del aplicativo movil.',
      'en': '',
    },
    'cpn1h1sz': {
      'es': 'FERNEY ANDRES CUASPUD SUAREZ',
      'en': '',
    },
    'w3iz3tvs': {
      'es': 'Director del desarrollo de la documentación proyecto.',
      'en': '',
    },
    'e7ggj293': {
      'es': 'IVAN DAVID ALVEAR ORTEGA',
      'en': '',
    },
    'xdw4k0qa': {
      'es':
          'Estudiante de octavo semestre, desarrollador de backend, consumo de api y gestor de base de datos.',
      'en': '',
    },
    'jtsl36d8': {
      'es': 'PEDRO SEBASTIAN HERNANDEZ GRANDA',
      'en': '',
    },
    'bt4mvt2n': {
      'es':
          'Estudiante de octavo semestre, desarrollador de diseño y frontend.',
      'en': '',
    },
    'narzuxcd': {
      'es': 'Home',
      'en': '',
    },
  },
  // BarraLateral
  {
    'ifvlqn1e': {
      'es':
          'Bienvenido UniApp \nConoce toda tu \ninformación academica \naqui.',
      'en': '',
    },
    'st3u7nga': {
      'es': 'Información Personal',
      'en': '',
    },
    'iupwycbw': {
      'es': 'Horario',
      'en': '',
    },
    'zossszpb': {
      'es': 'Notas Parciales',
      'en': '',
    },
    '7myetclq': {
      'es': 'Información Universitaria',
      'en': '',
    },
    'rx1307d2': {
      'es': 'Sobre Nosotros',
      'en': '',
    },
    'wudasnfi': {
      'es': 'Cerrar sesion',
      'en': '',
    },
  },
  // modalEdit
  {
    'zzc6bewy': {
      'es': 'IVAN ALVEAR',
      'en': '',
    },
    'hysbactg': {
      'es': 'Editar informacion',
      'en': '',
    },
    '1bniao71': {
      'es': 'Mis Datos Personales',
      'en': '',
    },
    '6aq5s3x8': {
      'es': 'Documento',
      'en': '',
    },
    'i1vbp38h': {
      'es': 'Edad',
      'en': '',
    },
    'pks9olv4': {
      'es': 'Masculino',
      'en': '',
    },
    'wwk02t4l': {
      'es': 'Femenino',
      'en': '',
    },
    'zbhm8d7t': {
      'es': 'Sexo',
      'en': '',
    },
    'g7qwa3od': {
      'es': 'Search for an item...',
      'en': '',
    },
    'b8owe8l3': {
      'es': 'Datos de Naciemento',
      'en': '',
    },
    'uit722a2': {
      'es': 'Selec..',
      'en': '',
    },
    '4pnr5g17': {
      'es': 'País',
      'en': '',
    },
    'ig3hlids': {
      'es': 'Provincia',
      'en': '',
    },
    '4yw8qoeq': {
      'es': 'Municipio',
      'en': '',
    },
    'w9puqnqa': {
      'es': 'Datos de la Carrera',
      'en': '',
    },
    'lh0x1vt2': {
      'es': 'Carrera',
      'en': '',
    },
    'gij42b8q': {
      'es': 'Semestre',
      'en': '',
    },
    'rnbcv2d1': {
      'es': 'Jornada',
      'en': '',
    },
    'wftofa3e': {
      'es': 'Otros datos',
      'en': '',
    },
    'xptq1arr': {
      'es': 'Correo',
      'en': '',
    },
    'v0av7loe': {
      'es': 'Celular',
      'en': '',
    },
    '8h5s6sgv': {
      'es': 'Guardar',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'scmy0ggg': {
      'es': '',
      'en': '',
    },
    'acqjd16e': {
      'es': '',
      'en': '',
    },
    't090yo7v': {
      'es': '',
      'en': '',
    },
    '38x1ug36': {
      'es': '',
      'en': '',
    },
    'vn05ndh8': {
      'es': '',
      'en': '',
    },
    '25wwq26e': {
      'es': '',
      'en': '',
    },
    'y8lxhpr0': {
      'es': '',
      'en': '',
    },
    '4b0xir9z': {
      'es': '',
      'en': '',
    },
    'k3xsusgx': {
      'es': '',
      'en': '',
    },
    'vgrpgx8z': {
      'es': '',
      'en': '',
    },
    't39miutg': {
      'es': '',
      'en': '',
    },
    '1nq3lgtk': {
      'es': '',
      'en': '',
    },
    '29wb80lm': {
      'es': '',
      'en': '',
    },
    'stx0nkiz': {
      'es': '',
      'en': '',
    },
    'd12chmpd': {
      'es': '',
      'en': '',
    },
    'gvanupf1': {
      'es': '',
      'en': '',
    },
    'mgnafd7u': {
      'es': '',
      'en': '',
    },
    'pkwiikc0': {
      'es': '',
      'en': '',
    },
    '1c0nal7i': {
      'es': '',
      'en': '',
    },
    'wqz7sxh3': {
      'es': '',
      'en': '',
    },
    'kuq5gh0d': {
      'es': '',
      'en': '',
    },
    'mzrbyiia': {
      'es': '',
      'en': '',
    },
    'fkk74n2r': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));

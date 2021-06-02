import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 195, 0, 70),
          centerTitle: true,
          title: const Text('Romanian - Russian'),
        ),
        body: MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final FlutterTts flutterTts = FlutterTts();

  final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
    primary: const Color.fromRGBO(255, 195, 0, 100),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    Future<void> _speak(String lang, String text) async {
      switch (lang) {
        case 'ro':
          {
            await flutterTts.setLanguage('ro-RO');
            break;
          }
        case 'ru':
          {
            await flutterTts.setLanguage('ru-RU');
            break;
          }
      }
      await flutterTts.setPitch(1.0);
      await flutterTts.speak(text);
    }

    return Container(
      alignment: Alignment.center,
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Salut');
              },
              child: const Text('Salut'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Привет');
              },
              child: const Text('Привет'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Ma numesc');
              },
              child: const Text('Ma numesc'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Меня зовут');
              },
              child: const Text('Меня зовут'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Ce mai faci?');
              },
              child: const Text('Ce mai faci?'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Как дела?');
              },
              child: const Text('Как дела?'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Bine, mulţumesc. Tu?');
              },
              child: const Text('Bine, mulţumesc. Tu?'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Хорошо, спасибо. А у вас?');
              },
              child: const Text('Хорошо, спасибо. А у вас?'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Pe curând!');
              },
              child: const Text('Pe curând!'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'До скорого!');
              },
              child: const Text('До скорого!'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Te rog / vă rog');
              },
              child: const Text('Te rog / vă rog'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Пожалуйста');
              },
              child: const Text('Пожалуйста'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Pentru puțin');
              },
              child: const Text('Pentru puțin'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Не за что');
              },
              child: const Text('Не за что'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Scuze');
              },
              child: const Text('Scuze'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Простите');
              },
              child: const Text('Простите'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Nicio problemă');
              },
              child: const Text('Nicio problemă'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Ничего страшного');
              },
              child: const Text('Ничего страшного'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Vă rog vorbiți mai lent');
              },
              child: const Text('Vă rog vorbiți mai lent'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Пожалуйста, говорите медленнее');
              },
              child: const Text('Пожалуйста, говорите медленнее'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Cum se ajunge la metrou?');
              },
              child: const Text('Cum se ajunge la metrou?'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Как дойти до метро?');
              },
              child: const Text('Как дойти до метро?'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ro', 'Mi-a făcut plăcere să te cunosc');
              },
              child: const Text('Mi-a făcut plăcere să te cunosc'),
              style: _buttonStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                _speak('ru', 'Приятно было познакомиться.');
              },
              child: const Text('Приятно было познакомиться.'),
              style: _buttonStyle,
            ),
          ),
        ],
      ),
    );
  }
}

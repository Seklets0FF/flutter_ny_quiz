import 'package:flutter/material.dart';
import 'package:flutter_ny_quiz/model/questions.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:awesome_button/awesome_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ny Quiz',
      debugShowCheckedModeBanner: false,
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _tekQuestion = 0;
  int _true = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text(
          'Новогодняя викторина',
          style: GoogleFonts.neucha(fontSize: 25.0),
        ),
        gradient: LinearGradient(colors: [Colors.indigo, Colors.grey[100]]),
        leading: FaIcon(FontAwesomeIcons.snowman, size: 40.0,),
        actions: [
          // FaIcon(FontAwesomeIcons.snowman, size: 40.0, color: Colors.white,),
          FaIcon(FontAwesomeIcons.tree, size: 40.0, color: Colors.green,)
        ],
      ),
      body: Column(
        children: [

          Image.asset(
            '${questions[_tekQuestion].imgUrl}',
            // width: 300,
            // height: 300,
          ),
          // SizedBox(
          //   height: 20.0,
          // ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              '${questions[_tekQuestion].txt}',
              style: GoogleFonts.neucha(fontSize: 25.0),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          _getButtons(questions[_tekQuestion].answers)
        ],
      ),
    );
  }

  _getButtons(Map answers) {
    List<Widget> _buttons = [];
    for (var answer in answers.keys) {
      _buttons.add(AwesomeButton(
        blurRadius: 10.0,
        splashColor: Color.fromRGBO(255, 255, 255, .4),
        borderRadius: BorderRadius.circular(37.5),
        child: Text(
          answer,
          style: GoogleFonts.neucha(fontSize: 25, color: Colors.white),
        ),
        height: 50.0,
        width: 400.0,
        color: Colors.indigo,
        onTap: () {
          if (answers[answer]) {
            _setQuestion(true);
          } else {
            _setQuestion(false);
          }
        },
      ));
      _buttons.add(SizedBox(
        height: 20.0,
      ));
    }
    return ButtonBar(
      children: _buttons,
    );
  }

  _setQuestion(bool answer) {
    if (answer) {
      _true += 1;
    }
    if (questions.length > _tekQuestion + 1) {
      setState(() {
        _tekQuestion += 1;
      });
    } else if (questions.length == _tekQuestion + 1) {
      showDialog(
          context: context,
          builder: (_) => AssetGiffyDialog(
                image: Image.asset('assets/img/hny.gif'),
                title: Text(
                  'С Новым Годом!',
                  style: TextStyle(fontSize: 20.0),
                ),
                description: Text(
                  'Ваш результат: $_true / ${questions.length}',
                  style: TextStyle(fontSize: 20.0),
                ),
                entryAnimation: EntryAnimation.TOP_LEFT,
                onlyOkButton: true,
                buttonOkColor: Colors.indigo,
                buttonOkText: Text('Ещё раз!', style: GoogleFonts.neucha(fontSize: 20, color: Colors.white),),
                onOkButtonPressed: () {
                  setState(() {
                    _tekQuestion = 0;
                    _true = 0;
                  });
                  Navigator.pop(context);
                },
              ));
    }
  }
}

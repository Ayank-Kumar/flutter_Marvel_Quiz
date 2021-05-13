import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'QuestionBank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
Questionbank questionbank = Questionbank();     /// bhale hi apne import kra liya ho but us class ke methods ko use krna ha to instantiation krna prega (ek asli object)
/*ise lib me bnana kahi aur nhi */              /// sirf template pe operate nhi kr payega

void main() {
  runApp(app()) ;
}
int score = 0 ;

void clear(List list){
  score = 0 ;
  return list.clear();     /// return ke baad statemenet likhne ka koi fayada nhi ha
}

class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  bool CorrectAns ;

  checker(UserAns) {
    CorrectAns = questionbank.all_questions[ques_num].Ans;
    if (UserAns == CorrectAns) {
      scorekeeper.add(Icon(Icons.check, color: Colors.green));
      score++;
    }
    else {
      scorekeeper.add(Icon(Icons.close, color: Colors.red));
    }
    questionbank.nextquestion();
     ///ya fir hm yhi pe khud bara dete kyunki wo public ha hence can be manipulated
  }
  List<Icon> scorekeeper = [];
 /* List<String> AllQuestion = [  // todo : yaha pe Questions likh rakha tha isliye Questions pe galat dikha raha tha
    'Vision first came in Civil War',
    'Ant Man was in Captain America\'s team',
    'Rhodes had died in Thanos moment ',
  ];
  List<bool> Answers = [                        // todo: but maine is program me code aise list ka hi likha ha
    false,true,false,false,false,true
  ];*/
  ///Questions q1 = Questions (q:'Vision first came in Civil War',a: false); => Default object instatntiation ke bajaye specific object instantiation.
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('* Marvel Quiz * \n Your score = $score')),
        ),

        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://terrigen-cdn-dev.marvel.com/content/prod/1x/avengersendgame_lob_crd_05.jpg"),
                  fit: BoxFit.cover),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Center(
                    child: Text(questionbank.all_questions[ques_num].Text,
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.pinkAccent.shade400 ,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black12,
                      ),
                    ),
                  ),
                ),//Text wale ka
                TextButton(
                  child: Container(
                    color: Colors.green,
                    margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    height: 60.0,
                    child: Center(
                      child: Text('True',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                  ),//true wala
                  onPressed: (){
                    setState((){//stateless me setstate krne ki koshish kr raha tha
                      checker(true);
                      if (ques_num == 0) {
                        clear(scorekeeper);
                      }
                    });
                  },
                ),
                TextButton(
                  child: Container(
                    color: Colors.red,
                    margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    height: 60.0,
                    child: Center(
                      child: Text('False',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                  ), //false wala
                  onPressed: (){
                    setState(() {        ///aapko kuch aisa chahiye jo user interface mai (mtlb) sb jagah change hoe to uske lie
                      checker(false);
                      if (ques_num == 0) {
                        clear(scorekeeper);
                      }
                       /*Alert(
                       context: context,
                       title: "Endgame",
                       desc: " Part of the journey is the end !",
                       image: Image.network(
                       "https://upload.wikimedia.org/wikipedia/en/4/4d/Avengers_Infinity_War_poster.jpg"),
                       ).show(); */   /// todo : learn how to make it work
                    });
                      },
                    ),
                Row(
                  children: scorekeeper,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



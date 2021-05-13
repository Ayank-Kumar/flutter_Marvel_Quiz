class Questions {
  String Text;
  bool Ans;

  Questions({String q,bool a}){  /// ham sirf this.Text aur this.Ans likh dete to woh bhi is pure ke barabar hi kaam krta(but maine nhi kiya kyunki maine niche sbme q aur a laga diye ha)
    Text = q ;
    Ans = a ;
  }
}
 int ques_num = 0 ;   ///ise class me nhi likha  kyunki fir ise bhi access krne ke lie . wale method se krna prta

            /// aur ham class ka object instatntiation krte ha usme class ke name ka use krte ha class bnate waqt class hi likhte ha bhale hi wo kisi aur class ki properties use kr raha ha
class Questionbank {
  /// class private nhi hoti (kyunki fir to wo kahi use hi nhi ho pati)

  List<Questions> all_questions = [                                         /// ab agar mai is variable ko private bana du fir ise is class ke bahar koi access ya manipulate nhi kr pyega
    Questions(q: 'Vision first came in Civil War', a: false),
    Questions(q: 'Ant Man was in Captain America\'s team', a: true),       /// Fir agar mujhe ise bahar se access krna ha to koi aur property ya method bnao isi class me
    Questions(q: 'Rhodes had died in Thanos moment ', a: false),           /// Aur wo public ho aur fir use acccess kr lo aur wo method fir ise acess kr lega :)
    Questions(
        q: 'Hulk could have beaten thanos in hand to hand fight', a: false), /// EG diya ha last me dekho
    Questions(q: 'Doctor Strange is one of the sorcerer ', a: true),
    Questions(q: 'Black widow was born in russia', a: true),
    Questions(q: 'the real name of the Scarlet Witch is Wanda', a: true),
    Questions(
        q: 'The Aether first appeared in Avengers:age of ultron', a: false),
    Questions(q: 'Power infinity stone was hidden on Vormir', a: false),
    Questions(
        q: 'the name of Thor\'s Axe in Avengers: Infinity War is Stormbreaker',
        a: true),
    Questions(
        q: 'Iron man\'s Suit in 2nd part had a triangular heart', a: true),
    Questions(
        q: 'the real name of Black Widow is Natasha Alinova Romanoff', a: true),
    Questions(q: 'Loki is a frost Giant', a: true),
    Questions(
        q: 'we learn the backstory how Nick Fury lost his eye in Winter Soldier',
        a: false),
    Questions(
        q: 'the mysterious glowing blue cube which Loki uses is reality stone',
        a: false),
    Questions(
        q: ' Gamma radiation caused Bruce Banner to become the Hulk', a: true),
    Questions(
        q: 'The European city do Hawkeye and Black Widow often reminisce about is Sokovia',
        a: false),
  ];                                         /// private hota to is class ki change nhi kr skte  aur inki properties ko bhi access nhi kr skte but

  nextquestion() {
    if (ques_num < all_questions.length - 1) {
      ques_num++;
    }
    else {
        ques_num = 0;
      }
    }
  }                 /// jaise ye bnake fir isko call kr lete
                                                /*String getquestext (int num){
                                                  return _all_questions[num].Text ;
                                                }
                                                 */
                   /// hm class ke andar hi class ki cheezo ko use krne ke liye . use nhi jrte wo class ke bahar clas  ki cheezo ko acess ko use krne ke liye





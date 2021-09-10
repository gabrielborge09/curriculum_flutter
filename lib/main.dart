import 'package:flutter/material.dart';

void main() {
  runApp(ProfileFourPage());
}

class ProfileFourPage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile4.dart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculum',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Curriculum'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black54,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                  "Mais de 2 anos de experiência e desenvolvimento mobile e 1+ anos de experiência em desenvolvimento web "),
            ),
            _buildTitle("Skills"),
            SizedBox(height: 10.0),
            _buildSkillRow("NodeJs", 0.75),
            SizedBox(height: 5.0),
            _buildSkillRow("Laravel", 0.6),
            SizedBox(height: 5.0),
            _buildSkillRow("React JS", 0.65),
            SizedBox(height: 5.0),
            _buildSkillRow("Flutter", 0.5),
            SizedBox(height: 30.0),
            _buildTitle("Experiencia"),
            _buildExperienceRow(
                company: "Valorem, Brazil",
                position: "Wordpress Developer",
                duration: "2019 - 2024"),
            _buildExperienceRow(
                company: "Orborus, Brazil",
                position: "Laravel Developer",
                duration: "2019 - 2024"),
            _buildExperienceRow(
                company: "Valorem, Brazil",
                position: "Web Developer",
                duration: "2021 - 2024"),
            SizedBox(height: 20.0),
            _buildTitle("Educação"),
            SizedBox(height: 5.0),
            _buildExperienceRow(
                company: "Unipam, Brazil",
                position: "Sistemas de Informação",
                duration: "2020 - 2024"),
            _buildTitle("Contato"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.mail,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "gabrielborge@gmail.com",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.phone,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "(38) 9 9736 - 8530",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  ListTile _buildExperienceRow(
      {required String company, String? position, String? duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
      ),
      title: Text(
        company,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$position ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  var avatars = 'images/icon.png';
  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        Container(
            width: 80.0,
            height: 80.0,
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[350],
                child: CircleAvatar(
                    radius: 35.0, backgroundImage: NetworkImage(avatars)))),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Gabriel Phillype",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text("Estagiario T.I(Dev)"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                SizedBox(width: 10.0),
                Text(
                  "Patos de minas,Minas Gerais, Brazil",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

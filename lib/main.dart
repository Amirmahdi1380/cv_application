import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      //toolbarHeight: 80.0,
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 214, 50, 151),
      title: Center(
        child: Text('امیرمهدی نورکاظمی'),
      ),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getMainContent(),
        ],
      ),
    );
  }

  Widget _getMainContent() {
    return Column(
      children: [
        SizedBox(height: 10),
        CircleAvatar(
          backgroundImage: AssetImage('images/profile.jpg'),
          radius: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'یه مهندس بی پول',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 15),
        Text(
          'عاشق یادگیری',
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        _getRowIcon(),
        SizedBox(
          height: 20,
        ),
        _getSkillLabel(),
        SizedBox(
          height: 20,
        ),
        _getResume()
      ],
    );
  }

  Widget _getResume() {
    var list1 = [
      'دانشجوی مهندسی کامپیوتر دانشگاه زنجان',
      ' برنامه نويس فلاتر كه خيلي ايده دارم',
      'نگاه خيلي خوبي به آينده دارم',
      'ايشالا كه بتونم آدم موفقي براي خودم باشم'
    ];
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      color: Colors.grey[100],
      child: Column(
        children: [
          Text(
            'خلاصه زندگی',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              for (var expert in list1)
                Text(
                  '$expert',
                  textDirection: TextDirection.rtl,
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getRowIcon() {
    return Wrap(
      //mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8.0,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagramSquare),
          color: Color.fromARGB(255, 214, 50, 151),
          iconSize: 40,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Color.fromARGB(255, 214, 50, 151),
          iconSize: 40,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Color.fromARGB(255, 214, 50, 151),
          iconSize: 40,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.twitter),
          color: Color.fromARGB(255, 214, 50, 151),
          iconSize: 40,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
          color: Color.fromARGB(255, 214, 50, 151),
          iconSize: 40,
        )
      ],
    );
  }

  Widget _getSkillLabel() {
    var list = ['android', 'flutter', 'dart', 'kotlin', 'java'];
    return Wrap(
      //crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10.0,
      alignment: WrapAlignment.center,
      children: [
        for (var skill in list)
          Card(
            elevation: 6,
            shadowColor: Colors.pink[500],
            child: Column(
              children: [
                Container(
                  height: 70.0,
                  width: 50.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8), child: Text('$skill'))
              ],
            ),
          ),
      ],
    );
  }
}

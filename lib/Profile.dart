import 'package:flutter/material.dart';
import 'package:profile/Login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset(
                  'assets/images/Me.jpeg',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Achmad Yusuf Subagja",
                style: TextStyle(
                    color: Colors.limeAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "D111911004",
                style: TextStyle(
                    color: Colors.limeAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(indent: 5, endIndent: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 50,
                    child: Column(
                      children: [
                        Icon(Icons.location_on, color: Colors.limeAccent),
                        SizedBox(height: 10),
                        Text(
                          'Cisarua',
                          style: TextStyle(
                              color: Colors.limeAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 50,
                    child: Column(
                      children: [
                        Icon(Icons.date_range, color: Colors.limeAccent),
                        SizedBox(height: 10),
                        Text(
                          '1999',
                          style: TextStyle(
                              color: Colors.limeAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 50,
                    child: Column(
                      children: [
                        Icon(Icons.male, color: Colors.limeAccent),
                        SizedBox(height: 10),
                        Text(
                          'Male',
                          style: TextStyle(
                              color: Colors.limeAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 50,
                    child: Column(
                      children: [
                        Icon(Icons.person, color: Colors.limeAccent),
                        SizedBox(height: 10),
                        Text(
                          'Mahasiswa',
                          style: TextStyle(
                              color: Colors.limeAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(indent: 5, endIndent: 5),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.location_history,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'POLITEKNIK TEDC BANDUNG',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.build,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'TEKNIK INFORMATIKA',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Pesantren No.2, Cibabat ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 1, bottom: 4.0),
                        child: Row(
                          children: [
                            Spacer(),
                            OutlinedButton(
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => LoginPage());
                                Navigator.push(context, route);
                              },
                              child: Text(
                                'Logout',
                                style: TextStyle(color: Colors.limeAccent),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

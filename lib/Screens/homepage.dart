import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: SizedBox(),
        leadingWidth: 0,
        title: Image.asset('assets/logo.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.wallet_giftcard,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: 2,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.grey[400],
            height: 1,
            endIndent: 20,
            indent: 20,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/user.png'),
                ),
                title: Text(
                  "robertfox",
                  style: TextStyle(
                    color: Color(0xff282a3a),
                    fontSize: 14,
                  ),
                ),
                subtitle: Text(
                  "3 hours ago",
                  style: TextStyle(
                    color: Color(0xff8e8f99),
                    fontSize: 14,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert_outlined),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat tristique in morbi nunc enim vitae. Gravida facilisis sit lobortis eget. Lorem faucibus vulputate purus viverra eu elit nec nisl.",
                  style: TextStyle(
                    color: Color(0xff4a4c5a),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/img.png',
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: const [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 5),
                    Text(
                      "2.5k",
                      style: TextStyle(
                        color: Color(0xff4a4c5a),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Icon(Icons.chat_bubble_outline),
                    const SizedBox(width: 5),
                    Text(
                      "2.5k",
                      style: TextStyle(
                        color: Color(0xff4a4c5a),
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}

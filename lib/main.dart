import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  final List<Map<String, String>> users = [
    {
      'name': 'Beyonce Ama',
      'address': 'Sta. Ana, Pampanga',
      'phone': '09934575394',
      'email': 'amabeyonce0@gmail.com',
      'image': 'https://scontent.fmnl13-1.fna.fbcdn.net/v/t39.30808-1/476560541_3055917897894831_2544576589834880273_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=103&ccb=1-7&_nc_sid=e99d92&_nc_ohc=ieUybkDeLkwQ7kNvgHKBOUU&_nc_oc=Adh2E1lgxjlCDxlUJMOh0Yjdghm5hMvdUBWP3TlDd2DhQCn5pV1mzc4AzzzrlMBbeCU&_nc_zt=24&_nc_ht=scontent.fmnl13-1.fna&_nc_gid=A5nCsERc6Fc7va3GDV_g4o3&oh=00_AYBf9XAXOYlPXhU5TSNY-7P71NI8tYrpPBd8ZRvKqsYa7A&oe=67B34381',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("User Profiles"),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.info_circle),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) => InfoModal(users: users),
            );
          },
        ),
      ),
      child: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.all(10),
          itemCount: users.length,
          separatorBuilder: (context, index) => Divider(color: CupertinoColors.systemGrey),
          itemBuilder: (context, index) {
            return CupertinoListTile(user: users[index]);
          },
        ),
      ),
    );
  }
}

class CupertinoListTile extends StatelessWidget {
  final Map<String, String> user;

  CupertinoListTile({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey5,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: Image.network(
              user['image']!,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: ${user['name']}", style: CupertinoTheme.of(context).textTheme.textStyle),
                Text("Address: ${user['address']}", style: CupertinoTheme.of(context).textTheme.textStyle),
                Text("Phone: ${user['phone']}", style: CupertinoTheme.of(context).textTheme.textStyle),
                Text("Email: ${user['email']}", style: CupertinoTheme.of(context).textTheme.textStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoModal extends StatelessWidget {
  final List<Map<String, String>> users;

  InfoModal({required this.users});

  @override
  Widget build(BuildContext context) {
    return CupertinoPopupSurface(
      child: Container(
        padding: EdgeInsets.all(20),
        height: 400,
        child: Column(
          children: [
            Text("All Members", style: CupertinoTheme.of(context).textTheme.navTitleTextStyle),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          users[index]['image']!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 15),
                    ],
                  );
                },
              ),
            ),
            CupertinoButton(
              child: Text("Close"),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
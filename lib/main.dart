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
    {
      'name': 'Monica Carreon',
      'address': 'Candaba, Pampanga',
      'phone': '0999999998',
      'email': 'monicacarreon0818@gmail.com',
      'image': 'https://scontent.fmnl13-1.fna.fbcdn.net/v/t39.30808-1/476800186_2534566823405634_5152775271712346789_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=103&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeG5f5zmIgv8ZuSvrh8MVl_hd4OLjx3feql3g4uPHd96qZKWH_nTywWv_kh2XKwifxQ28D6oF1sAwjVKzQBAJ-oB&_nc_ohc=ut9IdVWprrwQ7kNvgH9_-Q_&_nc_oc=AdhV7XaDSGFnKHZmwbSbIQLgiYKwBQWCN7P1fCzacqcDTM4jhwGWn8IPfjJOC-0uQdw&_nc_zt=24&_nc_ht=scontent.fmnl13-1.fna&_nc_gid=AfHTSN1XLYOLZyv2nz8aFYb&oh=00_AYBOn6fosR7ntKgOIvksiFGoQbh_7vasxqpbmWxsyF3rfw&oe=67B32AEB',
    },
     {
      'name': 'Rachelle Macalino',
      'address': 'Arayat, Pampanga',
      'phone': '09546864793',
      'email': 'rachellemacalino@gmail.com',
      'image': 'https://scontent.fmnl13-1.fna.fbcdn.net/v/t39.30808-1/445004182_2183311248680506_7850881638170803563_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeGnql_w_KBceJ1CdrMkzlDrff_nrzYW6Gl9_-evNhboaacujZSNczRdgsf0YCFAIPGJpbmk3AUh3edVxiP-pEGj&_nc_ohc=V-yrK5mwxQYQ7kNvgFl7Iix&_nc_oc=AdiWl17vuKfdCRNQWjVG1Lkf-n3xdnOPcLoM9HK45SNquA-8k9kZ3HChV2gqXsq9u-0&_nc_zt=24&_nc_ht=scontent.fmnl13-1.fna&_nc_gid=A8SJpLr2a6qP_ujz5Cssu0t&oh=00_AYCAtsYS9dWnl7bDFcZ4lh0h_KtIdbT4tzerxz8tBERiWA&oe=67B33A4C',
    },
    {
      'name': 'Romel Gamboa',
      'address': 'Sta.ANA, Pampanga',
      'phone': '0678656864793',
      'email': 'gamboaromel@gmail.com',
      'image': 'https://scontent.fmnl13-4.fna.fbcdn.net/v/t39.30808-1/479494196_9512036862191582_4661220378301324892_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=107&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeHmc4Qma-L2I6tokQAU1yrKj14v1fvUl_KPXi_V-9SX8m9J2a_e8_Ggji6V1L_ol6_YO17zKzo_Ck6Cg1auiDOt&_nc_ohc=tABHnguydxUQ7kNvgFyg4NQ&_nc_oc=AdjgpMgmaj6OHdK3icoJB1ARdQR0Q5qivk1_-BSVZhPj6vJUGhZnCHoYsIf5wycdiz8&_nc_zt=24&_nc_ht=scontent.fmnl13-4.fna&_nc_gid=AyN87ONowqBOkRwh_4ybkKo&oh=00_AYDXuAjq3avHp11VsbX6fNkdekj_oifFjNROBK5PWcc7Jw&oe=67B33DED',
    },
     {
      'name': 'Jolas Arpon',
      'address': 'Sta.ANA, Pampanga',
      'phone': '0945464793',
      'email': 'arponjolas@gmail.com',
      'image': 'https://scontent.fmnl13-1.fna.fbcdn.net/v/t39.30808-1/476495148_1419939806051401_4269933969384659569_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=100&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeEvt9YcqR_vgJFxN9k02KRhsd6QqOHtzMex3pCo4e3Mx7mxdTQTEkl1iivlLLNx_TlMMmLWCj00QtBQN5vExF0x&_nc_ohc=M0ORObtMQrAQ7kNvgFeeTC1&_nc_oc=AdgTTc2hREmsZwx3fan-OK3PKrK30s4H_7aU88yNn4YO7APnDQzqydAiGPkfNlNn1oU&_nc_zt=24&_nc_ht=scontent.fmnl13-1.fna&_nc_gid=AONP2iCxH77KVxVuIxQCdua&oh=00_AYDHnvqKo4FuDUIqL75bDrPVBkfI2x8_dHTol1UrMbhMrg&oe=67B328ED',
    },
    {
      'name': 'Kayle Cedric Larin',
      'address': 'San Luis, Pampanga',
      'phone': '0949975444',
      'email': 'larinkaylecedric@gmail.com',
      'image': 'https://scontent.fmnl13-3.fna.fbcdn.net/v/t39.30808-1/422874731_1363549171192384_1006331762063123531_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=102&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeHQn50H28VboykH4Hm-OsZdA__VYeUhRkoD_9Vh5SFGSoyVYhqorzyp6HEucq40I9mDo0kMiADb3iRfam6t0fcX&_nc_ohc=3yubaec_lywQ7kNvgGyAMi6&_nc_oc=AdiIVz6-ume9D9CvbZorMn7Q1mboJiV55-3a6K3wy-jZrXp0tEGQabtpi_Fp40JGKrk&_nc_zt=24&_nc_ht=scontent.fmnl13-3.fna&_nc_gid=AojQJRcRQkyRxWEw5sNJ876&oh=00_AYCqRWcJ7MHVyzNfmkqSRrBp84ew-2vBMy5OkZiRxawlJA&oe=67B3402E',
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
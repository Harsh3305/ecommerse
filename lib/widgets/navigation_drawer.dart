import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<NavigationBar> {
  String _image_url =
      "https://www.google.com/search?q=harsh+verma+iiit+delhi&sxsrf=ALeKk02GgIxH4MpKLqAzlUDwuvPm6cd2NQ:1623700781409&tbm=isch&source=iu&ictx=1&fir=B9PcK--Lc5hG6M%252C-2WrKB6AZh4p0M%252C_&vet=1&usg=AI4_-kQJlUgk4L35Vawox59QFmIIx1rWZg&sa=X&ved=2ahUKEwjxirDi9JfxAhXI4zgGHVoVAlwQ9QF6BAgeEAE#imgrc=B9PcK--Lc5hG6M";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountEmail: Text("harshverma3305@gmail.com"),
                accountName: Text("Harsh Verma"),
                currentAccountPicture:
                    // CircleAvatar(backgroundImage: NetworkImage(_image_url)),
                    CircleAvatar(child: Image.asset("assets/images/user.png")),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.black),
            ),
            tileColor: Colors.white,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.black),
            ),
            tileColor: Colors.white,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
            ),
            title: Text(
              "Mail at",
              style: TextStyle(color: Colors.black),
            ),
            tileColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

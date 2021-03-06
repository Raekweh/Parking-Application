import 'package:ParkingApp/NavigationBar/UI/navigation_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'authenticate.dart';
import '../data/app_user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<AppUser?>(context);

    if(user == null)
      {
        return Authenticate();
      }
    else
      {
        return NavigationMenu();
      }
  }
}
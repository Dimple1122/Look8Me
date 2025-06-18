import 'package:flutter/material.dart';
import 'package:look8me/common/model/user_model.dart';
import 'package:look8me/common/services/firebase/firebase_auth_service.dart';
import 'package:look8me/common/services/locator.dart';
import 'package:look8me/common/services/navigation_service.dart';
import 'package:look8me/common/utils/common_widgets.dart';
import 'package:look8me/routes/screen_name.dart';

class ProfileScreen extends StatelessWidget {
  final User? user;
  const ProfileScreen({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Profile', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              CommonWidget.getProfileIcon(user?.userName, radius: 50, fontSize: 36),
              const SizedBox(height: 20),
              Text('Name: ${user?.userName}', style: TextStyle(fontSize: 22, color: Colors.white)),
              const SizedBox(height: 10),
              Text('DOB: ${user?.userDob}', style: TextStyle(fontSize: 22, color: Colors.white)),
              const SizedBox(height: 10),
              Text(
                'Email: ${user?.userEmail}',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: CommonWidget.getElevatedButton(
                  context: context,
                  name: 'Logout',
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.85,
                  onPressed: () async {
                    locator.get<FirebaseAuthService>().signOut();
                    locator.get<NavigationService>().pushNamedAndRemoveUntil(ScreenName.welcome);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

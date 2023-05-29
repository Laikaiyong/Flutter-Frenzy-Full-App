import 'package:app/components/custom_profile_uploader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight / 100 * 5,
              ),
              CustomProfileUploader(),
              SizedBox(
                height: 10,
              ),
              Text("Vandyck", style: Theme.of(context).textTheme.headlineSmall),
              Text("Freshie", style: Theme.of(context).textTheme.bodyMedium)
            ],
          ),
        ));
  }
}

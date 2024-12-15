 import 'package:farm_management_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
                  Image.asset("assets/img/logo.png", width: 200),
                  Text(
                    "Farmer's Link",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.secondaryGreen),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.7),
              child: Image.asset(
                "assets/img/welcome.png",
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                  color: AppColors.primaryGreen,
                ),
                child: Center(
                  child: SizedBox(
                    width: 180,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.lightGreen),
                      onPressed: () {
                        (context).push("/login");
                      },
                      child: Text(
                        "GET START",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.mainWhite,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

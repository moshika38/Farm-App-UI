import 'package:farm_management_app/utils/colors.dart';
import 'package:farm_management_app/widgets/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              // add header
              const AppHeader(
                title: "Welcome back",
                subtitle: "John Doe",
                icon: Icons.person,
              ),

              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.lightGreen,
                      AppColors.lightGreen,
                      AppColors.primaryGreen,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "50 °C",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    fontSize: 55,
                                    color: AppColors.primaryYellow),
                          ),
                          Text(
                            "Partly Cloudy",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColors.mainWhite,
                                ),
                          ),
                          Text(
                            "April 20, 2023",
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.mainWhite,
                                    ),
                          ),
                        ],
                      ),

                      // image
                      SizedBox(
                        child: Image.network(
                          "https://cdn-icons-png.freepik.com/256/7016/7016109.png?ga=GA1.1.850858268.1733994202",
                          width: 60,
                          height: 60,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.checklist_sharp,
                      size: 20,
                      color: AppColors.lightGreen,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Quick Actions",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.lightGreen,
                            ),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: CategoryCard(
                      isLeft: true,
                      textOne: "12",
                      textTwo: "Todos",
                      imgLink:
                          "https://cdn-icons-png.freepik.com/256/17837/17837426.png?ga=GA1.1.1157317632.1733674362&semt=ais_hybrid",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CategoryCard(
                      isLeft: false,
                      textOne: "2",
                      textTwo: "New massage",
                      imgLink:
                          "https://cdn-icons-png.freepik.com/256/13313/13313974.png?ga=GA1.1.1157317632.1733674362&semt=ais_hybrid",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final bool isLeft;
  final String imgLink;
  final String textOne;
  final String textTwo;
  final VoidCallback? onTap;
  const CategoryCard({
    super.key,
    required this.isLeft,
    required this.imgLink,
    required this.textOne,
    required this.textTwo,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: BoxDecoration(
        color: isLeft ? Colors.transparent : AppColors.lightGreen,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.lightGreen,
          width: isLeft ? 1.5 : 0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              border: Border.all(
                color: isLeft ? AppColors.lightGreen : AppColors.mainWhite,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image.network(
                imgLink,
                fit: BoxFit.cover,
                width: 45,
                color: isLeft ? AppColors.lightGreen : AppColors.mainWhite,
              ),
            ),
          ),
          Text(
            textOne,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: isLeft ? AppColors.lightGreen : AppColors.primaryYellow),
          ),
          Text(
            textTwo,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: isLeft ? AppColors.mainBlack : AppColors.mainWhite),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: isLeft ? AppColors.lightGreen : AppColors.mainWhite,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 30,
                color: isLeft ? AppColors.mainWhite : AppColors.lightGreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

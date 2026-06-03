import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../data/models/info_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/info_card.dart';
import '../widgets/footer_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    // تجهيز قائمة البيانات باستخدام الـ Model المتواجد في طبقة الـ Data
    final List<InfoModel> personalData = [
      const InfoModel(title: AppStrings.studentNameLabel, value: AppStrings.studentNameValue, icon: Icons.person),
      const InfoModel(title: AppStrings.jobTitleLabel, value: AppStrings.jobTitleValue, icon: Icons.code),
      const InfoModel(title: AppStrings.specialtyLabel, value: AppStrings.specialtyValue, icon: Icons.phone_android),
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.personalInfoTitle,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                ),
                const SizedBox(height: 10),

                // عرض الكروت بشكل متجاوب (Responsive) بناءً على حجم الشاشة
                isMobile
                    ? Column(
                  children: personalData.map((data) => InfoCard(title: data.title, value: data.value, icon: data.icon)).toList(),
                )
                    : Row(
                  children: personalData.map((data) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: InfoCard(title: data.title, value: data.value, icon: data.icon),
                    ),
                  )).toList(),
                ),

                const SizedBox(height: 30),
                const FooterSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
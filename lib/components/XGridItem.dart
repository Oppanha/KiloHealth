import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/constants/XFont.dart';
import 'package:kilo_health/constants/XPadding.dart';
import 'package:kilo_health/constants/XShape.dart';

class ListItem {
  final String image;
  final String title;
  final String description;
  final List<String> healthTips;

  const ListItem({
    required this.image,
    required this.title,
    required this.description,
    required this.healthTips,
  });
}

Widget XGridItem(
  List<ListItem> items,
  void Function(int index) onTap,
) {
  return GridView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
    ),
    itemCount: items.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () => onTap(index),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(XShape.medium),
            image: DecorationImage(
                image: CachedNetworkImageProvider(items[index].image),
                fit: BoxFit.fill),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(XShape.medium),
                    bottomRight: Radius.circular(XShape.medium)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: XPadding.small,
                  ),
                  color: Colors.white,
                  height: Get.height / XPadding.extraLarge,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        items[index].title,
                        style: TextStyle(
                          fontSize: XFont.medium,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        items[index].description,
                        style: TextStyle(
                          fontSize: XFont.small,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

final List<ListItem> listItems = [
  ListItem(
    image: 'https://via.placeholder.com/150/FF5733/FFFFFF?text=Diabetes',
    title: 'What is Diabetes?',
    description:
        'Diabetes is a chronic condition that affects how the body processes blood sugar (glucose).',
    healthTips: [
      'Monitor your blood sugar levels regularly.',
      'Maintain a balanced diet with low sugar and high fiber.',
      'Exercise regularly to help manage weight and blood sugar levels.',
      'Avoid smoking and limit alcohol consumption.',
      'Consult with a healthcare provider for personalized treatment plans.',
    ],
  ),
  ListItem(
    image: 'https://via.placeholder.com/150/33FF57/FFFFFF?text=Hypertension',
    title: 'What is Hypertension?',
    description:
        'Hypertension, or high blood pressure, is a condition in which the blood pressure in the arteries is persistently elevated.',
    healthTips: [
      'Reduce sodium intake and eat a balanced diet rich in fruits and vegetables.',
      'Engage in regular physical activity to maintain a healthy weight.',
      'Limit alcohol consumption and avoid smoking.',
      'Monitor your blood pressure regularly and take prescribed medications as directed.',
      'Manage stress through relaxation techniques and adequate sleep.',
    ],
  ),
  ListItem(
    image: 'https://via.placeholder.com/150/0000FF/FFFFFF?text=Asthma',
    title: 'What is Asthma?',
    description:
        'Asthma is a respiratory condition that causes difficulty in breathing due to inflammation of the airways.',
    healthTips: [
      'Use prescribed inhalers and medications as directed.',
      'Identify and avoid asthma triggers, such as allergens and smoke.',
      'Keep your home environment clean to reduce allergens.',
      'Exercise regularly but consult with a healthcare provider for a suitable exercise plan.',
      'Create an asthma action plan with your healthcare provider.',
    ],
  ),
  ListItem(
    image: 'https://via.placeholder.com/150/FFFF00/FFFFFF?text=Cancer',
    title: 'What is Cancer?',
    description:
        'Cancer is a disease in which abnormal cells divide uncontrollably and destroy body tissue.',
    healthTips: [
      'Follow a healthy diet rich in fruits, vegetables, and whole grains.',
      'Avoid tobacco products and limit alcohol consumption.',
      'Get regular screenings and check-ups to catch cancer early.',
      'Exercise regularly to maintain a healthy weight and boost immune function.',
      'Discuss with your healthcare provider about cancer prevention strategies and treatments.',
    ],
  ),
  ListItem(
    image: 'https://via.placeholder.com/150/FF00FF/FFFFFF?text=Alzheimers',
    title: 'What is Alzheimer’s Disease?',
    description:
        'Alzheimer’s disease is a progressive disorder that causes brain cells to degenerate and die, leading to memory loss.',
    healthTips: [
      'Engage in mentally stimulating activities to keep your brain active.',
      'Maintain a healthy diet and regular physical exercise.',
      'Stay socially active and engage in meaningful activities.',
      'Consult with healthcare professionals for medications and management strategies.',
      'Establish a routine to help with memory and daily activities.',
    ],
  ),
  ListItem(
    image: 'https://via.placeholder.com/150/00FFFF/FFFFFF?text=Arthritis',
    title: 'What is Arthritis?',
    description:
        'Arthritis is the inflammation of one or more of your joints, causing pain and stiffness.',
    healthTips: [
      'Exercise regularly to improve joint function and reduce stiffness.',
      'Maintain a healthy weight to reduce stress on your joints.',
      'Use hot or cold therapy to manage pain and inflammation.',
      'Consult with a healthcare provider for appropriate medications and treatments.',
      'Incorporate joint-friendly exercises, such as swimming or cycling, into your routine.',
    ],
  ),
  ListItem(
    image: 'https://via.placeholder.com/150/800080/FFFFFF?text=TB',
    title: 'What is Tuberculosis?',
    description:
        'Tuberculosis (TB) is a bacterial infection that mainly affects the lungs but can spread to other parts of the body.',
    healthTips: [
      'Complete the full course of prescribed antibiotics to ensure the infection is fully treated.',
      'Avoid close contact with others until you are no longer contagious.',
      'Maintain good hygiene by covering your mouth when coughing or sneezing.',
      'Follow up with your healthcare provider for regular check-ups and tests.',
      'Ensure a balanced diet to support your immune system during treatment.',
    ],
  ),
  ListItem(
    image: 'https://via.placeholder.com/150/FFA500/FFFFFF?text=Influenza',
    title: 'What is Influenza?',
    description:
        'Influenza, commonly known as the flu, is a viral infection that attacks the respiratory system.',
    healthTips: [
      'Get an annual flu vaccine to reduce your risk of infection.',
      'Practice good hand hygiene by washing your hands frequently.',
      'Avoid close contact with people who are sick.',
      'Stay hydrated and get plenty of rest if you become ill.',
      'Consult with a healthcare provider for antiviral medications if needed.',
    ],
  ),
  ListItem(
    image: 'https://via.placeholder.com/150/808080/FFFFFF?text=HIV',
    title: 'What is HIV/AIDS?',
    description:
        'HIV/AIDS is a virus that attacks the body’s immune system, weakening the body’s ability to fight infections.',
    healthTips: [
      'Take prescribed antiretroviral medications as directed to manage the virus.',
      'Get regular medical check-ups and monitor your immune system health.',
      'Practice safe sex and avoid sharing needles to prevent transmission.',
      'Maintain a healthy lifestyle with proper nutrition and exercise.',
      'Seek support and counseling to manage the emotional aspects of living with HIV/AIDS.',
    ],
  ),
  ListItem(
    image: 'https://via.placeholder.com/150/000000/FFFFFF?text=COVID-19',
    title: 'What is COVID-19?',
    description:
        'COVID-19 is a respiratory illness caused by the coronavirus SARS-CoV-2, leading to mild to severe symptoms.',
    healthTips: [
      'Follow public health guidelines for vaccination and booster shots.',
      'Practice good hand hygiene and wear masks in crowded places.',
      'Maintain physical distance from others and avoid large gatherings.',
      'Stay informed about the latest health recommendations and updates.',
      'If you experience symptoms, get tested and follow isolation protocols.',
    ],
  ),
];

import 'package:flutter/material.dart';

import 'stat_card_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B2AFF),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        actions: [
          GestureDetector(
            onTap: () {
              print('Heart Clicked');
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: const Color(0xFFDCDCDC)),
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(12),
              child: const Row(children: [
                Icon(
                  Icons.favorite,
                  size: 20,
                  color: Color(0xFFD73F14),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '4',
                  style: TextStyle(color: Color(0xFFD73F14), fontSize: 18),
                ),
              ]),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/images/profile.png',
              height: 180,
            ),
          ),
          Positioned(
            top: 170,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 280,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text('@johndoe'),
                        Text('24 Jan 2024'),
                      ],
                    ),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        'assets/images/india_flag.png',
                        width: 38,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: 400,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          childAspectRatio: 2,
                          mainAxisSpacing: 12),
                      children: [
                        StatCardWidget(
                          statCount: 230193,
                          title: 'Points',
                        ),
                        StatCardWidget(
                          statCount: 230193,
                          title: 'Kwizzles',
                        ),
                        StatCardWidget(
                          statCount: 230193,
                          title: 'Current Streaks',
                        ),
                        StatCardWidget(
                          statCount: 230193,
                          title: 'Global Rank',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

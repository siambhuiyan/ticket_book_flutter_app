import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/utils/app_json.dart';

class HotelsDetails extends StatefulWidget {
  const HotelsDetails({super.key});

  @override
  State<HotelsDetails> createState() => _HotelsDetailsState();
}

class _HotelsDetailsState extends State<HotelsDetails> {
  late int index;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    // TODO: implement didChangeDependencies
    index = args['index'];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEDEB),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xffEEEDEB),
            floating: false,
            pinned: true,
            expandedHeight: 300.0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primary,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(
              //   hotelsList[index]['place'],
              //   style: TextStyle(
              //     color: Color(0xffBF3131),
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/${hotelsList[index]['image']}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.black.withOpacity(.3),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: Text(
                        hotelsList[index]['place'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                              color: AppStyles.primary,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                      'Nestled in the heart of the city, our hotel offers a perfect blend of comfort, convenience, and luxury. With stylish rooms, modern amenities, and exceptional service, we ensure a memorable stay for both business and leisure travelers. Enjoy a range of dining options, a relaxing spa, and easy access to local attractions—all just steps from your door.'),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'More Images',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          child: Image.network(
                              'https://images.unsplash.com/photo-1596436876625-091f67351709?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIyfHx8ZW58MHx8fHx8'),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

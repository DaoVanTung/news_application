import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VNPT News',
          style: Theme.of(context).textTheme.bodyLarge?.apply(
                fontWeightDelta: 3,
              ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.teal,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              trailing: const Icon(Icons.navigate_next_rounded),
              onTap: () {
                debugPrint('onTap Settings');
              },
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              trailing: Icon(Icons.navigate_next_rounded),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              trailing: Icon(Icons.navigate_next_rounded),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  DateFormat('dd-MM-yyyy').format(DateTime.now()),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.calendar_month_outlined)
              ],
            ),
            // const SizedBox(height: 16),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'China Says 2018 Growth Target to Reflect New...',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: const Icon(Icons.bookmark_border_rounded),
                      // ),
                      GestureDetector(
                        // splashColor: Colors.red,
                        onTap: () {
                          debugPrint('onTap');
                        },
                        child: const Icon(Icons.bookmark_border_rounded),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      'assets/lake2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LeaderBoardPage extends StatefulWidget {
  const LeaderBoardPage({super.key});

  @override
  State<LeaderBoardPage> createState() => _LeaderBoardPageState();
}

class _LeaderBoardPageState extends State<LeaderBoardPage> {
  //list of user
  List<List> users = [
    ['Riya Sharma', 9000],
    ['Abhishek Kumar', 7500],
    ['Rahul Verma', 6200],
    ['Sneha Joshi', 5300],
    ['Ankit Singh', 4800],
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Leaderboard')),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      //rank
                      CircleAvatar(
                        child: Center(child: Text((index + 1).toString())),
                      ),

                      //space
                      SizedBox(width: 10),

                      //name
                      Text(
                        user[0],
                        style: Theme.of(context).textTheme.titleMedium,
                      ),

                      //space
                      SizedBox(width: 30),

                      //amount
                      Text(
                        '${user[1]} Rs.',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

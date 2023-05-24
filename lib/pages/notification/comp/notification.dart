import 'package:flutter/material.dart';

class NotificationPost extends StatelessWidget {
  const NotificationPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: Icon(
            Icons.star,
            color: Colors.purple,
          ),
          title: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Text(
                      'Maximmilian',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '@maxjacobson  3h',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Y'all ready for this next post?"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          trailing: Icon(
            Icons.arrow_downward,
            size: 15,
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          leading: const Icon(
            Icons.star,
            color: Colors.purple,
          ),
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    const Text(
                      'Tabita Potter',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Image.asset('assets/images/bluetick.png', height: 20),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '@mis_potter  4h',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                        "If you're looking for positive quotes and uplifting sayings to boost your mood, these 100 stay positive quotes will help you look on the bright side—even when your day starts out on the totally wrong foot From uplifting sayings that encourage a sense of optimism to feel-good affirmations that'll help you get your glass half full attitude back, this list of inspiring stay positive quotes, thoughts, and messages can help during uncertain times."),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.comment_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        '46',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        '58',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        '16',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.send_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          trailing: const Icon(
            Icons.arrow_downward,
            size: 15,
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        ListTile(
          leading: const Icon(
            Icons.star,
            color: Colors.purple,
          ),
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    const Text(
                      'Tabita Potter',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Image.asset('assets/images/bluetick.png', height: 20),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '@mis_potter  4h',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                        "If you're looking for positive quotes and uplifting sayings to boost your mood, "),
                  ),
                ],
              ),
              Container(
                height: 170,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                    'https://images.unsplash.com/photo-1683020543243-8f1a69c14493?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.comment_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        '46',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        '58',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        '16',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.send_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          trailing: const Icon(
            Icons.arrow_downward,
            size: 15,
          ),
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}

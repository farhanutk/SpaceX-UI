import 'package:flutter/material.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      border: Border.all(color: Colors.grey, width: 2)),
                  padding: EdgeInsets.all(4),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blue.withAlpha(7)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'travis',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blue.withAlpha(7)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'snowden',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blue.withAlpha(7)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'macey',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blue.withAlpha(7)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'snowden',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blue.withAlpha(7)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'macey',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [Colors.blue, Colors.blue.withAlpha(7)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                          ),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1541185933-ef5d8ed016c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('SpaceX'),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(Icons.check, size: 16, color: Colors.blue)
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ))
                  ],
                ),
                Image.network(
                    'https://images.unsplash.com/photo-1615627121117-e3278bc8b1db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Mars Base',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Gravity on Mars is about 38% of that of Earth, so you would be able to lift heavy things and bound around. Furthermore, the day is remarkably close to that of Earth.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [Colors.blue, Colors.blue.withAlpha(7)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                          ),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1621739165914-7155e5d4816e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Elon Musk'),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(Icons.check, size: 16, color: Colors.blue)
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ))
                  ],
                ),
                Image.network(
                    'https://images.unsplash.com/photo-1635324236775-868d3680b65f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=392&q=80'),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Tesla Bot',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'At the event, Musk unveiled the "Tesla Bot," a 1.7 metre, 56 kilogram robot. He said the bot will have a screen where its face should be that will present information. The humanoid robot will also be capable of dead-lifting 68 kilograms and carrying about 20 kilograms, according to the CEO.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

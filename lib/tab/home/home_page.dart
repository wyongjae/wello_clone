import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _categoryName = [
    '현금',
    '기타',
    '서비스',
    '현물',
    '이용권',
    '의려지원',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wello'),
        actions: [
          IconButton(
            visualDensity:
                const VisualDensity(horizontal: -4.0, vertical: -4.0),
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            visualDensity:
                const VisualDensity(horizontal: -4.0, vertical: -4.0),
            onPressed: () {},
            icon: const Icon(Icons.star),
          ),
          IconButton(
            visualDensity:
                const VisualDensity(horizontal: -4.0, vertical: -4.0),
            onPressed: () {},
            icon: const Icon(Icons.alarm),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0), //or 15.0
                    child: SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child:
                          Image.network('https://pbs.twimg.com/profile_images/137'
                              '4979417915547648/vKspl9Et_400x400.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Text(
                          '안녕하세요',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '원용재님',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('맞춤 정책'),
                            Text(
                              '0건',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 110,
                        ),
                        const VerticalDivider(
                          width: 1,
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('신규 정책'),
                            Text(
                              '0건',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('신청 가능'),
                            Text(
                              '0건',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 110,
                        ),
                        const VerticalDivider(
                          width: 1,
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('신청 완료'),
                            Text(
                              '0건',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(Icons.add),
                  Text(
                    '카테고리별 지원정책',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                '당신을 위한 정책을 찾아보세요',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                width: 300,
                height: 300,
                child: GridView.builder(
                    itemCount: _categoryName.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                    itemBuilder: (context, index) {
                    final category = _categoryName[index];
                      return Card(
                        child: Text('$index'),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

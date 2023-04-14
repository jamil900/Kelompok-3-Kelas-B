import 'package:flutter/material.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
    required this.id,
    required this.title,
    required this.content,
    required this.image,
    required this.newsId,
  });
  final String newsId;
  final String id;
  final String title;
  final String content;
  final String image;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Berita'),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2020/12/16/06/10/woman-5835747_640.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Text(
                  '${widget.newsId} Mending nilai pas-pasan daripada berbuat curang dan berbohong dengan menyontek. Prinsip inilah yang harus ditanamkan oleh orang tua pada anak-anaknya. Harusnya orang tua mengajarkan kepada anak-anak supaya jujur dan mencari ridho Allah.',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}

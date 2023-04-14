import 'package:flutter/material.dart';

class NewsFragment extends StatelessWidget {
  const NewsFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Fragment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildNewsItem(
              context,
              'https://akcdn.detik.net.id/visual/2014/12/18/f2e429ac-a8a8-455e-ad44-f791f1cc6ced_169.jpg?w=650&q=90',
              'Pria Menjadi Gila Karena Setelah Godin (Azab Version)',
              'olisi menangkap pria berinisial YA yang viral di media sosial karena mengamuk di Stasiun Sudirman dan Stasiun Manggarai, Jakarta. Kasubdit Ranmor Ditreskrimum Polda Metro Jaya Kompol Yuliansyah mengatakan YA ditangkap sekitar pukul 02.00 WIB dini hari.',
            ),
            _buildNewsItem(
              context,
              'https://cdn.pixabay.com/photo/2013/07/13/13/32/demon-161049_640.png',
              'Berikut adalah dosa menipu asisten dosen',
              ' Perbuatan menipu menjadi salah satu penyakit yang merusak hubungan antar manusia. Perbuatan ini akan mengakibatkan hilangnya rasa saling mempercayai antara satu sama lain "Memang menipu itu adalah perbuatan dosa besar karena salah satu munafik. Nabi Muhammad SAW bersabda sesungguhnya manusia yang paling buruk adalah orang yang bermuka dua," ucap Ustadz Abdul Ka afi, Rabu (23/3/2022).Lebih lanjut, Ustadz Abdul Ka afi mengatakan bahwa dosa menipu orang lain dapat diampuni oleh Allah. Namun, ada persyaratannya yaitu harus tobat secara sungguh-sungguh. ."',
            ),
            _buildNewsItem(
              context,
              'https://cdn.pixabay.com/photo/2021/01/06/09/33/exam-5893785_640.png',
              'Dosa menyontek saat ujian',
              'Barangsiapa yang menipu kami, maka ia tidak termasuk golongan kami. (HR. Muslim no. 101, dari Abu Hurairah). ini berarti setiap orang yang menipu, berbohong, berbuat curang, mengelabui dikatakan oleh Nabi bukanlah termasuk golongan beliau. Artinya, diancam melakukan dosa besar. Menyontek pun demikian.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsItem(
      BuildContext context, String imageUrl, String title, String content) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      content,
                      style: Theme.of(context).textTheme.bodyText2,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(AgegnehuTube());
}

class AgegnehuTube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agegnehu Tube', // ስሙ ተቀይሯል
      debugMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'main_navigation.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainNavigation())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // የዩቲዩብ አይነት አይኮን
            Icon(Icons.play_rectangle_rounded, size: 100, color: Colors.red),
            SizedBox(height: 20),
            Text(
              'Agegnehu Tube', // ስሙ እዚህም ተቀይሯል
              style: TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.bold, 
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'video_player_page.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      'title': 'ኢትዮጵያዊ የባህር ኃይል ታሪክ',
      'thumbnail': 'https://via.placeholder.com/150',
      'url': 'https://assets.mixkit.co/videos/preview/mixkit-military-base-with-soldiers-4389-large.mp4'
    },
    {
      'title': 'Agegnehu Tube Special Update',
      'thumbnail': 'https://via.placeholder.com/150',
      'url': 'https://assets.mixkit.co/videos/preview/mixkit-software-developer-working-on-code-4131-large.mp4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agegnehu Tube'), // አርዕስቱ ተቀይሯል
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey[900],
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(videos[index]['thumbnail']!),
              ),
              title: Text(videos[index]['title']!, style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoPlayerPage(
                      videoUrl: videos[index]['url']!,
                      title: videos[index]['title']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(AgegnehuTube());
}

class AgegnehuTube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agegnehu Tube',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: SplashScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'main_navigation.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainNavigation())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_circle_fill, size: 100, color: Colors.red),
            SizedBox(height: 20),
            Text(
              'Agegnehu Tube',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'home_page.dart';

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    Center(child: Text('Trending Page')),
    Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: 'Trending'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'video_player_page.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {'title': 'Agegnehu Tube Tech News', 'thumb': 'https://via.placeholder.com/150', 'url': 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'},
    {'title': 'እንኳን ደህና መጡ ወደ Agegnehu Tube', 'thumb': 'https://via.placeholder.com/150', 'url': 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agegnehu Tube'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'ቪዲዮዎችን ፈልግ...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                filled: true,
                fillColor: Colors.grey[900],
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(videos[index]['thumb']!),
              title: Text(videos[index]['title']!),
              onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) => VideoPlayerPage(url: videos[index]['url']!, title: videos[index]['title']!)
              )),
            ),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayerPage extends StatefulWidget {
  final String url;
  final String title;
  VideoPlayerPage({required this.url, required this.title});

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.url);
    _videoPlayerController.initialize().then((_) {
      setState(() {
        _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController,
          autoPlay: true,
          allowFullScreen: true,
        );
      });
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          _chewieController != null 
              ? AspectRatio(aspectRatio: 16/9, child: Chewie(controller: _chewieController!))
              : AspectRatio(aspectRatio: 16/9, child: Center(child: CircularProgressIndicator())),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(widget.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^2.24.2
  firebase_auth: ^4.16.0
  cloud_firestore: ^4.14.0
  video_player: ^2.8.1
  chewie: ^1.7.1
    import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Firebaseን እዚህ ጋር እናስጀምራለን
  runApp(AgegnehuTube());
}

class AgegnehuTube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agegnehu Tube',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
      home: SplashScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main_navigation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainNavigation()));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ስህተት: ${e.toString()}")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Agegnehu Tube Login', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.red)),
            SizedBox(height: 30),
            TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder())),
            SizedBox(height: 15),
            TextField(controller: _passwordController, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder()), obscureText: true),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: login,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, minimumSize: Size(double.infinity, 50)),
              child: Text('Login', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'video_player_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agegnehu Tube'), backgroundColor: Colors.black),
      body: StreamBuilder(
        // 'videos' ከሚለው የ Firebase ስብስብ (Collection) ዳታውን ያመጣል
        stream: FirebaseFirestore.instance.collection('videos').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var videoData = snapshot.data!.docs[index];
              return Card(
                color: Colors.grey[900],
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(videoData['thumbnail'], width: 100, fit: BoxFit.cover),
                  ),
                  title: Text(videoData['title'], style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPlayerPage(url: videoData['url'], title: videoData['title']),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

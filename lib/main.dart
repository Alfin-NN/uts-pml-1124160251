import 'package:flutter/material.dart';

// TAHAP 1 – MaterialApp (Materi 4)
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Azkia Alfin Zulfikar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
      home: const ProfilePage(),
    );
  }
}

// TAHAP 3a – Widget Reusable (InfoTile)
class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
// TAHAP 2 & 3: ProfilePage
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Aplikasi Profil Mahasiswa')),
              );
            },
          ),
        ],
      ),
      // Drawer otomatis tombol Hamburger di pojok kiri atas
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Azkia Alfin Zulfikar'),
              accountEmail: Text('azkiaalfinzulfikar@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person, size: 40),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil Saya'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person, size: 50),
                ),
                const SizedBox(height: 12),
                Text(
                  'Azkia Alfin Zulfikar',
                  style: textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  'NIM: 1124160251',
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 2),
                Text(
                  'Teknik Informatika (Malam)',
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                
                  // Card 1: Kontak (4 InfoTile)
                const Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      InfoTile(
                        icon: Icons.email,
                        label: 'Email',
                        value: 'azkiaalfinzulfikar@gmail.com',
                      ),
                      InfoTile(
                        icon: Icons.phone,
                        label: 'Nomor HP',
                        value: '081234567890',
                      ),
                      InfoTile(
                        icon: Icons.class_,
                        label: 'Kelas',
                        value: 'TI SE 24 Malam',
                      ),
                      InfoTile(
                        icon: Icons.code,
                        label: 'GitHub',
                        value: 'github.com/Alfin-NN',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
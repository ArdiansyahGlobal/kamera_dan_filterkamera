import 'package:flutter/material.dart'; // UI Flutter
import 'package:camera/camera.dart'; // Akses kamera
import 'takepicture_screen.dart' show TakePictureScreen; // Import layar kamera

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Inisialisasi Flutter binding

  final cameras = await availableCameras(); // Ambil daftar kamera

  if (cameras.isEmpty) { // Cek jika tidak ada kamera
    print("Tidak ada kamera yang tersedia");
    return;
  }

  final firstCamera = cameras.first; // Pilih kamera pertama

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(camera: firstCamera), // Buka layar kamera
      debugShowCheckedModeBanner: false, // Sembunyikan banner debug
    ),
  );
}

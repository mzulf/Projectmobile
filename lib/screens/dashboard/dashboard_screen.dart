import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B795E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 24),
              _buildServiceOptions(),
              const SizedBox(height: 24),
              _buildLaundryStatus(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 12),
            const Text(
              'Welcome Bud!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Get.snackbar(
              'Notifications',
              'No new notifications',
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.white,
            );
          },
        ),
      ],
    );
  }

  Widget _buildServiceOptions() {
    return Row(
      children: [
        Expanded(
          child: _buildServiceCard(
            'per KG',
            Icons.layers_outlined,
                () {
              // Tindakan saat fitur Per KG diimplementasikan
              // Get.toNamed(Routes.PER_KG); // Aktifkan ini nanti saat route sudah ada
              Get.snackbar('Info', 'Halaman Per KG belum tersedia');
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildServiceCard(
            'Satuan',
            Icons.style_outlined,
                () {
              // Tindakan saat fitur Satuan diimplementasikan
              // Get.toNamed(Routes.SATUAN); // Aktifkan ini nanti saat route sudah ada
              Get.snackbar('Info', 'Halaman Satuan belum tersedia');
            },
          ),
        ),
      ],
    );
  }

  Widget _buildServiceCard(String title, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 32,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLaundryStatus() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Laundry Dipacking',
            style: TextStyle(
              color: Colors.green,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Laundry Sedang Diantar Ke Lokasi',
            style: TextStyle(
              color: Colors.green,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: const Color(0xFF1B795E),
      unselectedItemColor: Colors.grey,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
      ],
      onTap: (index) {
        // Saat ini hanya ada satu tab (Home)
        switch (index) {
          case 0:
            Get.toNamed(Routes.HOME);
            break;
        }
      },
    );
  }
}

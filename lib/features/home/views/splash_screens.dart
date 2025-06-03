import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/assets.dart';
import '../../../core/routers/app_router.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(

        child: Stack(
          children: [
            // background image full screen
            Positioned.fill(
              child: Image.asset(
                Assets.splash,
                fit: BoxFit.cover, // ảnh sẽ phủ kín tự động co giản
              ),
            ),

            // Lớp overlay (nếu muốn làm mờ hoặc tối bớt ảnh)
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),

            _buildTextAndButton(), // Hiển thị text và button

          ],
        )
      )
    );
  }


  Widget _buildTextAndButton() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🎨 Text được style
             Center(
               child:  Text(
                 'Bắt đầu với những',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 32,
                   fontWeight: FontWeight.bold,
                   height: 1.2,
                   shadows: [
                     Shadow(
                       offset: Offset(0, 1),
                       blurRadius: 4,
                       color: Colors.black45,
                     ),
                   ],
                 ),
               ),
             ),
             Center(child: Text(
               'món ăn',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 32,
                 fontWeight: FontWeight.bold,
                 height: 1.2,
                 shadows: [
                   Shadow(
                     offset: Offset(0, 1),
                     blurRadius: 4,
                     color: Colors.black45,
                   ),
                 ],
               ),
             ),),

              const SizedBox(height: 24),

              // 🎨 Button được style
              Center(
                child: SizedBox(
                  width: 135,
                  child: ElevatedButton(
                    onPressed: () => Get.offNamed(AppRoutes.home),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD4AF37),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center, // căn giữa nội dung
                      children: [
                        const Text(
                          'Bắt đầu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 8), // khoảng cách giữa text và icon
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 100),
            ],
          ),
        )
      ),
    );
  }



}
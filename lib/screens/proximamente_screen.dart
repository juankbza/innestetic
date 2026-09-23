import 'package:flutter/material.dart';
import 'package:innestetic/widgets/social_links.dart';
import 'package:innestetic/themes/app_themes.dart';

class ProximamenteScreen extends StatelessWidget {
  const ProximamenteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBarWidget(),

      body: Container(
        //color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondoproximamente2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final bool isMobile = constraints.maxWidth < 600;

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: isMobile ? 220 : 300,
                        height: isMobile ? 220 : 300,
                        fit: BoxFit.contain,
                      ),

                      const SizedBox(height: 10),

                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: isMobile ? 25 : 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          children: const [
                            TextSpan(
                              text: 'Estamos ',
                            ),
                            TextSpan(
                              text: 'actualizando',
                              style: TextStyle(
                                color: Color(0xFF2F8FD8),
                              ),
                            ),
                            TextSpan(
                              text: ' nuestra página web',
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30),

                      SizedBox(
                        width: 180,
                        child: Divider(
                          color: Color(0xFF0D4E8B),
                          thickness: 2,
                        ),
                      ),

                      const SizedBox(height: 30),

                      const Text(
                        'Siguenos en nuestras redes sociales',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 25),

                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 15,
                        runSpacing: 12,
                        children: [
                          ElevatedButton.icon(
                            onPressed: SocialLinks.whatsapp,
                            icon: const Icon(Icons.chat),
                            label: const Text('WhatsApp'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppThemes
                                  .lightTheme.colorScheme.onPrimary,
                            ),
                          ),

                          ElevatedButton.icon(
                            onPressed: SocialLinks.instagram,
                            icon: const Icon(Icons.camera_alt),
                            label: const Text('Instagram'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppThemes
                                  .lightTheme.colorScheme.onPrimary,
                            ),
                          ),

                          ElevatedButton.icon(
                            onPressed: SocialLinks.facebook,
                            icon: const Icon(Icons.facebook),
                            label: const Text('Facebook'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppThemes
                                  .lightTheme.colorScheme.onPrimary,
                            ),
                          ),

                          ElevatedButton.icon(
                            onPressed: SocialLinks.email,
                            icon: const Icon(Icons.email),
                            label: const Text('Email'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppThemes
                                  .lightTheme.colorScheme.onPrimary,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 40),

                      SizedBox(
                        width: 90,
                        child: Divider(
                          color: Color(0xFF0D4E8B),
                          thickness: 2,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Gracias',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
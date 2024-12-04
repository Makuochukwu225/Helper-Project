import 'package:flutter/material.dart';
import 'package:helper_project/projects/provider_usage/src/providers/auth_provider.dart';
import 'package:helper_project/projects/provider_usage/src/screens/screens.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailCtrl = TextEditingController();
  var passCtrl = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: emailCtrl,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            if (isLoading) const CircularProgressIndicator(),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierColor: Colors.amber,
                  builder: (context) {
                    return const Center(child: CircularProgressIndicator());
                  },
                );
                setState(() {
                  isLoading = true;
                });
                context.read<AuthProvider>().login(
                      username: emailCtrl.text.trim(),
                      password: passCtrl.text.trim(),
                      callBack: (value) {
                        setState(() {
                          isLoading = false;
                        });
                        Navigator.pop(context);
                        switch (value) {
                          case "Login Successful":
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(value.toString())));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ));
                            break;
                          case "Failed to login":
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Failed to login")));
                            break;
                          default:
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(value.toString())));
                        }
                      },
                    );
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

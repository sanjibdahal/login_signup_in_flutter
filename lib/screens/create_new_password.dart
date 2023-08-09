import 'package:flutter/material.dart';
import 'package:todo_app/screens/password_changed.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create New Password',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Your new password must be unique from those previously used.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            //Text Field
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey.shade200,
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextFormField(
                style: const TextStyle(fontFamily: 'Poppins'),
                decoration: InputDecoration(
                  hintText: 'New Password',
                  fillColor: Colors.grey[200],
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 15),
            //Text Field
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey.shade200,
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextFormField(
                style: const TextStyle(fontFamily: 'Poppins'),
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  fillColor: Colors.grey[200],
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            //login button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PasswordChanged()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                      ),
                    ),
                    child: const Text(
                      'Reset Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

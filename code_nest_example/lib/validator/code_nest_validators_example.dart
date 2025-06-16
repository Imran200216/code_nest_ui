import 'package:flutter/material.dart';
import 'package:code_nest_ui/code_nest_ui.dart';

class CodeNestValidatorsExample extends StatefulWidget {
  const CodeNestValidatorsExample({super.key});

  @override
  State<CodeNestValidatorsExample> createState() =>
      _CodeNestValidatorsExampleState();
}

class _CodeNestValidatorsExampleState extends State<CodeNestValidatorsExample> {
  // Form key
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController numController = TextEditingController();
  final TextEditingController pinController = TextEditingController();
  final TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CodeNestContainer(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              spacing: 22,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CodeNestVerticalSpacer(30),

                // Username Field With Validator
                CodeNestTextFormField(
                  controller: userNameController,
                  hint: "Enter username...",
                  prefixIcon: Icons.person,
                  keyboardType: TextInputType.name,
                  validator: (value) => CodeNestValidators.username(
                    value,
                    errorMsg: "Enter the username",
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),

                // Email Field With Validator
                CodeNestTextFormField(
                  controller: emailController,
                  hint: "Enter email...",
                  prefixIcon: Icons.email,
                  validator: (value) => CodeNestValidators.email(
                    value,
                    errorMsg: "Enter the email address",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  borderRadius: BorderRadius.circular(4),
                ),

                // Password Field With Vaidators
                CodeNestTextFormField(
                  controller: passController,
                  hint: "Enter password",
                  prefixIcon: Icons.password,
                  validator: (value) => CodeNestValidators.password(
                    value,
                    minLength: 6,
                    requireSpecialChar: true,
                    errorMsg: "Enter the Password",
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  borderRadius: BorderRadius.circular(4),
                ),

                // Number Field With Validator
                CodeNestTextFormField(
                  controller: numController,
                  hint: "Enter number",
                  prefixIcon: Icons.numbers,
                  validator: (value) => CodeNestValidators.number(
                    value,
                    errorMsg: "Enter the Number",
                  ),
                  keyboardType: TextInputType.number,
                  borderRadius: BorderRadius.circular(4),
                ),

                // Pin Field Wiht Validator
                CodeNestTextFormField(
                  controller: pinController,
                  hint: "Enter Pin",
                  prefixIcon: Icons.pin,
                  validator: (value) => CodeNestValidators.pin(
                    value,
                    length: 4,
                    errorMsg: "Enter the Pin Correctly ",
                  ),
                  keyboardType: TextInputType.number,
                  borderRadius: BorderRadius.circular(4),
                ),

                // URL Field With Validator
                CodeNestTextFormField(
                  controller: urlController,
                  hint: "Enter Url",
                  prefixIcon: Icons.link,
                  validator: (value) => CodeNestValidators.url(
                    value,
                    errorMsg: "Enter a Valid Url",
                  ),
                  keyboardType: TextInputType.url,
                  borderRadius: BorderRadius.circular(4),
                ),

                const CodeNestVerticalSpacer(30),

                const CodeNestHorizontalSpacer(30),

                // Submit Button
                SizedBox(
                  width: double.infinity,
                  child: CodeNestIconFilledBtn(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    label: "Submit Data",
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // ✅ All fields valid
                        ScaffoldMessenger.of(context).showSnackBar(
                          CodeNestSuccessSnackBar(
                            message: "Form is Valid",
                            closeIconColor: Colors.white,
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                          ),
                        );
                      } else {
                        // ❌ Some fields invalid
                        ScaffoldMessenger.of(context).showSnackBar(
                          CodeNestFailureSnackBar(
                            message: "Please fix the errors in red",
                            closeIconColor: Colors.white,
                            backgroundColor: Colors.redAccent,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

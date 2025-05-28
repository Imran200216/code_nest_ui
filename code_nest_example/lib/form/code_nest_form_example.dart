import 'package:code_nest_ui/code_nest_ui.dart';
import 'package:flutter/material.dart';

class CodeNestFormExample extends StatefulWidget {
  const CodeNestFormExample({super.key});

  @override
  State<CodeNestFormExample> createState() => _CodeNestFormExampleState();
}

class _CodeNestFormExampleState extends State<CodeNestFormExample> {
  final List<String> fruits = ['Apple', 'Banana', 'Cherry', 'Dates'];
  String? selectedFruit;

  final TextEditingController _dateController = TextEditingController();

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        _dateController.text = pickedDate.toLocal().toString().split(
          ' ',
        )[0]; // Format: yyyy-MM-dd
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            spacing: 24,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Code Nest String Drop Down Text Form Field
              CodeNestStringDropdownTextFormField(
                items: fruits,
                selectedValue: selectedFruit,
                hintText: 'Select a fruit',
                onChanged: (value) {
                  setState(() {
                    selectedFruit = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a fruit';
                  }
                  return null;
                },
                borderRadius: BorderRadius.circular(20),
              ),

              // Code Nest Text Form Field
              CodeNestTextFormField(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                primaryColor: Colors.green,
                hintColor: Colors.grey,
                errorColor: Colors.red,
                prefixIcon: Icons.verified_user,
                keyboardType: TextInputType.name,
                labelText: "UserName",
                hint: "Enter username...",
              ),

              // Code Nest Password Text Form Field
              const CodeNestPasswordTextFormField(
                labelText: "Password",
                hint: "Enter password",
              ),

              // Code Nest Multi Line Text Form Field
              const CodeNestMultiLineTextFormField(
                hint: "Enter you feedback...",
                labelText: "Enter your feedback",
              ),

              // Code Nest Picker Text Form Field
              CodeNestPickerTextFormField(
                controller: _dateController,
                onTap: () => _pickDate(context),
                prefixIcon: Icons.date_range,
                suffixIcon: Icons.time_to_leave,
                labelText: "Select Date",
                hint: "Choose a date",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';
// import 'package:your_app/view_page.dart';

void main() {
  testWidgets('ViewPage displays correct data', (WidgetTester tester) async {
    const name = 'John Doe';
    const identityNumber = '1234567890';
    const birthDate = '2000-01-01';
    const gender = 'Male';
    const phoneNumber = '123456789';
    const lastEducation = 'Bachelor Degree';
    const religion = 'Christian';
    const job = 'Engineer';
    const address = '123 Main St';
    const accountType = 'Savings';

    await tester.pumpWidget(
      MaterialApp(
        home: ViewPage(
          name: name,
          identitynumber: identityNumber,
          birthdate: birthDate,
          gender: gender,
          phonenumber: phoneNumber,
          lasteducation: lastEducation,
          religion: religion,
          job: job,
          address: address,
          accounttype: accountType,
        ),
      ),
    );

    // Use Finder to find and verify the displayed text widgets
    expect(find.text('Name: $name'), findsOneWidget);
    expect(find.text('Identity Number: $identityNumber'), findsOneWidget);
    expect(find.text('Birht Date: $birthDate'), findsOneWidget);
    expect(find.text('Gender: $gender'), findsOneWidget);
    expect(find.text('Phone Number: $phoneNumber'), findsOneWidget);
    expect(find.text('Last Education: $lastEducation'), findsOneWidget);
    expect(find.text('Religion: $religion'), findsOneWidget);
    expect(find.text('Job: $job'), findsOneWidget);
    expect(find.text('Address: $address'), findsOneWidget);
    expect(find.text('Account Type: $accountType'), findsOneWidget);
  });
}

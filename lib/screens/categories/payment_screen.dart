import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  static const String routeName = 'PaymentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Select payment method',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Amount to pay: ₹878',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('Cards'),
            _buildPaymentOption(context, 'Add new card', Icons.credit_card),
            SizedBox(height: 16.0),
            _buildSectionHeader('UPI'),
            _buildPaymentOption(
                context, 'Google Pay UPI', Icons.account_balance_wallet),
            _buildPaymentOption(
                context, 'PhonePe UPI', Icons.account_balance_wallet),
            _buildPaymentOption(
                context, 'Amazon Pay UPI', Icons.account_balance_wallet),
            _buildPaymentOption(
                context, 'Add a new UPI ID', Icons.account_balance_wallet),
            SizedBox(height: 16.0),
            _buildSectionHeader('Wallet'),
            _buildPaymentOption(context, 'Paytm Payments Bank Wallet',
                Icons.account_balance_wallet),
            _buildPaymentOption(
                context, 'Amazon Pay Balance', Icons.account_balance_wallet),
            SizedBox(height: 16.0),
            _buildSectionHeader('Pay with app'),
            _buildPaymentOption(
                context, 'CRED Pay', Icons.account_balance_wallet),
            SizedBox(height: 16.0),
            _buildSectionHeader('Netbanking'),
            _buildPaymentOption(
                context, 'Netbanking', Icons.account_balance_wallet),
            SizedBox(height: 16.0),
            _buildSectionHeader('Pay after service'),
            _buildPaymentOption(context, 'Pay online after service',
                Icons.account_balance_wallet),
            _buildPaymentOption(context, 'Pay in cash after service',
                Icons.account_balance_wallet),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildPaymentOption(
      BuildContext context, String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, size: 20.0),
      title: Text(title),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 18,
      ),
      onTap: () {
        // Handle onTap
      },
    );
  }
}

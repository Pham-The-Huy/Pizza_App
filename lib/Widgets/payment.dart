import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int? _selectedPaymentMethod; // Giá trị phương thức thanh toán được chọn

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Methods',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    _paymentMethodTile('Momo', 1),
                    _paymentMethodTile('Credit Card', 2),
                    _paymentMethodTile('Paypal', 3),
                    _paymentMethodTile('Zalo Pay', 4),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Summary',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sub-total:'),
                        Text('\$24'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Shipping Fee:'),
                        Text('\$2'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total payment:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$26',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Xử lý khi người dùng xác nhận thanh toán
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          'Confirm Payment',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _paymentMethodTile(String title, int value) {
    return RadioListTile<int>(
      title: Text(title),
      value: value,
      groupValue: _selectedPaymentMethod,
      onChanged: (value) {
        setState(() {
          _selectedPaymentMethod = value;
        });
      },
    );
  }
}

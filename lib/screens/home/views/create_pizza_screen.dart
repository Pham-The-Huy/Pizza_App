import 'package:flutter/material.dart';
import 'package:pizza_repository/pizza_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pizza_repository/pizza_repository.dart';


class CreatePizzaScreen extends StatefulWidget {
  @override
  _CreatePizzaScreenState createState() => _CreatePizzaScreenState();
}

class _CreatePizzaScreenState extends State<CreatePizzaScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Pizza'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Handle saving pizza
                _savePizza();
              },
              child: Text('Save Pizza'),
            ),
          ],
        ),
      ),
    );
  }

  void _savePizza() {
    // Retrieve data from text fields
    String name = _nameController.text;
    String description = _descriptionController.text;
    int price = int.parse(_priceController.text) ;

    // You can perform validation here before saving the pizza

    // Create a Pizza object using data from text fields
    Pizza pizza = Pizza(
      name: name,
      description: description,
      price: price, pizzaId: '', picture: '', isVeg: true, spicy: 10, discount: 10, macros: Macros(carbs: 10,calories: 10,fat: 10,proteins: 10,),
    );

    // Perform the saving operation using PizzaService
    PizzaService().savePizza(pizza);

    // Optionally, you can navigate back to the previous screen after saving
    // Navigator.pop(context);
  }



  @override
  void dispose() {
    // Clean up controllers when the widget is disposed
    _nameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    super.dispose();
  }
}

class PizzaService {
  final CollectionReference _pizzaCollection = FirebaseFirestore.instance.collection('pizzas');

  Future<void> savePizza(Pizza pizza) async {
    try {
      await _pizzaCollection.add(pizza.toEntity().toDocument());
      print('Pizza saved successfully');
    } catch (e) {
      print('Error saving pizza: $e');
      throw e; // You can handle errors based on your requirement
    }
  }
}
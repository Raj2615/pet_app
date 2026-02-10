import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/product_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  double getTotal() {
    double total = 0;

    for (var item in cartItems) {
      ProductModel p = item["product"];
      int qty = item["quantity"];
      total += (p.price * qty);
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: cartItems.isEmpty
            ? const Center(child: Text("Cart is empty"))
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        ProductModel product = cartItems[index]["product"];
                        int qty = cartItems[index]["quantity"];

                        return Card(
                          child: ListTile(
                            leading: Image.asset(product.image, height: 40),
                            title: Text(product.name),
                            subtitle: Text("Qty: $qty"),
                            trailing: Text("₹${product.price * qty}"),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Total: ₹${getTotal()}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 15),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Order placed!")),
                        );
                      },
                      child: const Text("Checkout"),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}

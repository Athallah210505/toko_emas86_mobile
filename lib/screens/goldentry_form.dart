import 'package:flutter/material.dart';
import 'package:toko_emas86_mobile/widgets/left_drawer.dart';

class GoldEntryFormPage extends StatefulWidget {
  const GoldEntryFormPage({super.key});

  @override
  State<GoldEntryFormPage> createState() => _GoldEntryFormPageState();
}

class _GoldEntryFormPageState extends State<GoldEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _price = 0;
  int _weight = 0;
  String _description = '';
  int _amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Jual Emas',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Input field for Name
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _name = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Name tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),

                // Input field for Price
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Price",
                      labelText: "Price",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (String? value) {
                      setState(() {
                        _price = int.tryParse(value ?? '0') ?? 0;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty || int.tryParse(value) == null) {
                        return "Price harus berupa angka!";
                      }
                      return null;
                    },
                  ),
                ),

                // Input field for Weight
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Weight",
                      labelText: "Weight",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (String? value) {
                      setState(() {
                        _weight = int.tryParse(value ?? '0') ?? 0;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty || int.tryParse(value) == null) {
                        return "Weight harus berupa angka!";
                      }
                      return null;
                    },
                  ),
                ),

                // Input field for Description
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Description",
                      labelText: "Description",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _description = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Description tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),

                // Input field for Amount
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Amount",
                      labelText: "Amount",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (String? value) {
                      setState(() {
                        _amount = int.tryParse(value ?? '0') ?? 0;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty || int.tryParse(value) == null) {
                        return "Amount harus berupa angka!";
                      }
                      return null;
                    },
                  ),
                ),

                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Show dialog on successful validation
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Produk berhasil disimpan'),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Name: $_name'),
                                      Text('Price: $_price'),
                                      Text('Description: $_description'),
                                      Text('Weight: $_weight'),
                                      Text('Amount: $_amount'),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      // Reset form and clear variables
                                      setState(() {
                                        _formKey.currentState!.reset();
                                        _name = '';
                                        _price = 0;
                                        _weight = 0;
                                        _description = '';
                                        _amount = 0;
                                      });
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: const Text("Save", style: TextStyle(color: Colors.black)),
                    ),
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

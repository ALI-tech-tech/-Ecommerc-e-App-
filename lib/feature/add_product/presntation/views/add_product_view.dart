import 'package:ecommerceapp/core/core.dart';
import 'package:ecommerceapp/feature/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/provider.dart';

class AddProductView extends ConsumerStatefulWidget {
  const AddProductView({super.key});
  static String rout = "/addproduct";
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddProductViewState();
}

class _AddProductViewState extends ConsumerState<AddProductView> {
  final _titleController = TextEditingController();
  final _priceController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _imgController = TextEditingController();
  final _categoryController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    _titleController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    _imgController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(productFormProvider);
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: const Text('Add Product')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Title'),
                  validator: (value) => requierd(value),
                ),
                TextFormField(
                  controller: _priceController,
                  decoration: const InputDecoration(labelText: 'Price'),
                  keyboardType: TextInputType.number,
                  validator: (value) => requierd(value),
                ),
                TextFormField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(labelText: 'Description'),
                  validator: (value) => requierd(value),
                ),
                TextFormField(
                  controller: _imgController,
                  decoration: const InputDecoration(labelText: 'Image URL'),
                  validator: (value) => requierd(value),
                ),
                TextFormField(
                  controller: _categoryController,
                  decoration: const InputDecoration(labelText: 'Category'),
                  validator: (value) => requierd(value),
                ),
                const SizedBox(height: 20),
                if (formState.isLoading) const CircularProgressIndicator(),
                if (formState.error != null)
                  Text('Error: ${formState.error}',
                      style: const TextStyle(color: Colors.red)),
                ElevatedButton(
                  onPressed: formState.isLoading
                      ? null
                      : () async {
                          final stat = ref.read(productFormProvider.notifier);

                          if (_formKey.currentState!.validate()) {
                            stat.updateTitle(_titleController.text);
                            stat.updatePrice(
                                double.parse(_priceController.text));
                            stat.updateDescription(_descriptionController.text);
                            stat.updateImage(_imgController.text);
                            stat.updateCategory(_categoryController.text);
                            await ref
                                .read(productFormProvider.notifier)
                                .submitForm();
                            context.showSnackBar('Product added');
                          }
                        },
                  child: const Text('Submit'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ref.read(productFormProvider.notifier).product.isNotEmpty
                    ? SizedBox(
                        width: double.infinity,
                        height: context.height,
                        child: ListView.builder(
                          itemCount: ref
                              .read(productFormProvider.notifier)
                              .product
                              .length,
                          itemBuilder: (context, index) => ItemCard(
                              product: ref
                                  .read(productFormProvider.notifier)
                                  .product[index]),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? requierd(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }
}

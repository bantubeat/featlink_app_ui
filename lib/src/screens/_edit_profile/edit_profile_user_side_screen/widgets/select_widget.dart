import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title, super.key});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final List<Animal> _animals = [
    Animal(id: 1, name: 'Lion'),
    Animal(id: 2, name: 'Flamingo'),
    Animal(id: 3, name: 'Hippo'),
    Animal(id: 4, name: 'Horse'),
    Animal(id: 5, name: 'Tiger'),
    Animal(id: 6, name: 'Penguin'),
    Animal(id: 7, name: 'Spider'),
    Animal(id: 8, name: 'Snake'),
    Animal(id: 9, name: 'Bear'),
    Animal(id: 10, name: 'Beaver'),
    Animal(id: 11, name: 'Cat'),
    Animal(id: 12, name: 'Fish'),
    Animal(id: 13, name: 'Rabbit'),
    Animal(id: 14, name: 'Mouse'),
    Animal(id: 15, name: 'Dog'),
    Animal(id: 16, name: 'Zebra'),
    Animal(id: 17, name: 'Cow'),
    Animal(id: 18, name: 'Frog'),
    Animal(id: 19, name: 'Blue Jay'),
    Animal(id: 20, name: 'Moose'),
    Animal(id: 21, name: 'Gecko'),
    Animal(id: 22, name: 'Kangaroo'),
    Animal(id: 23, name: 'Shark'),
    Animal(id: 24, name: 'Crocodile'),
    Animal(id: 25, name: 'Owl'),
    Animal(id: 26, name: 'Dragonfly'),
    Animal(id: 27, name: 'Dolphin'),
  ];

  final List<MultiSelectItem<Animal>> _items = _animals
      .map((animal) => MultiSelectItem<Animal>(animal, animal.name))
      .toList();

  List<Animal> _selectedAnimals2 = [];
  List<Animal> _selectedAnimals3 = [];
  List<Animal> _selectedAnimals5 = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    _selectedAnimals5 = _animals;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              //################################################################################################
              // Rounded blue MultiSelectDialogField
              //################################################################################################
              MultiSelectDialogField<Animal>(
                items: _items,
                title: const Text('Animals'),
                selectedColor: Colors.blue,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  border: Border.all(color: Colors.blue, width: 2),
                ),
                buttonIcon: const Icon(Icons.pets, color: Colors.blue),
                buttonText: Text(
                  'Favorite Animals',
                  style: TextStyle(color: Colors.blue[800], fontSize: 16),
                ),
                onConfirm: (results) {
                  setState(() {
                    _selectedAnimals5 = results;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:car_agency/pages/carDetails.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CarsPage extends StatelessWidget {
  final CollectionReference cars = FirebaseFirestore.instance.collection('Car');

  CarsPage({super.key});

  String getImagePath(String carName) {
    switch (carName) {
      case 'Toyota Corolla':
        return 'assets/images/toyotaCorrola.png';
      case 'Honda Civic':
        return 'assets/images/hondaCivic.png';
      case 'Ford Mustang':
        return 'assets/images/fordMustang.png';
      case 'Chevrolet Malibu':
        return 'assets/images/chevroletMalibu.png';
      case 'BMW 3 Series':
        return 'assets/images/bmw3Series.png';
      case 'Mercedes-Benz C-Class':
        return 'assets/images/mercedesCclass.png';
      case 'Audi A4':
        return 'assets/images/audiA4.png';
      case 'Hyundai Elantra':
        return 'assets/images/huyndaiElentra.png';
      case 'Kia Forte':
        return 'assets/images/kiaForte.png';
      case 'Nissan Altima':
        return 'assets/images/nissanAltima.png';
      case 'Volkswagen Jetta':
        return 'assets/images/volksJetta.png';
      case 'Subaru Impreza':
        return 'assets/images/suparuImpreza.png';
      case 'Mazda 3':
        return 'assets/images/mazda3.png';
      case 'Chrysler 300':
        return 'assets/images/chrysler300.png';
      case 'Toyota Camry':
        return 'assets/images/toyotaCamry.png';
      default:
        return 'assets/images/toyotaCamry.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Cars Available',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/carspage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          StreamBuilder(
            stream: cars.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Center(child: Text('Error fetching data'));
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              final carDocs = snapshot.data!.docs;

              return ListView.builder(
                itemCount: carDocs.length,
                itemBuilder: (context, index) {
                  var car = carDocs[index].data() as Map<String, dynamic>;
                  return InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return CarDetailsPage(
                            car: car,
                            imagePath: getImagePath(car['Name'] ?? 'Unknown'));
                      }));
                    },
                    child: _buildCarRow(
                      car['Name'] ?? 'Unknown',
                      'Model: ${car['Model'] ?? 'N/A'}',
                      'CC: ${car['CC'] ?? 'N/A'}',
                      'Color: ${car['Color'] ?? 'N/A'}',
                      'Quantity: ${car['Quantity'] ?? 'N/A'}',
                      getImagePath(car['Name'] ?? 'Unknown'),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCarRow(String carName, String model, String cc, String color,
      String quantity, String imagePath) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.black54,
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 60,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                carName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                model,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

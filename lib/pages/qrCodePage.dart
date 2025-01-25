// Importa il pacchetto Flutter per costruire l'interfaccia utente
import 'package:flutter/material.dart';

import 'homeview.dart';

// Definizione della classe Qrcodepage come StatelessWidget
class Qrcodepage extends StatelessWidget {
  // Dichiarazione del parametro finale per l'URL dell'immagine
  final String imgUrl; // Percorso dell'immagine del QR Code

  // Costruttore della classe con parametro obbligatorio
  const Qrcodepage({
    super.key, // Chiave opzionale per identificare il widget
    required this.imgUrl, // Parametro obbligatorio per l'URL dell'immagine
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Colore di sfondo della schermata
      backgroundColor: const Color.fromARGB(255, 10, 0, 53),

      // AppBar con titolo
      appBar: AppBar(
        centerTitle: true, // Centra il titolo
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Homeview()),
                (route) => false);
          },
        ),
        backgroundColor: const Color.fromARGB(255, 10, 0, 53),
        iconTheme: const IconThemeData(
            color: Colors.white), // Colore della freccia indietro
        title: const Text(
          'Il tuo biglietto',
          style: TextStyle(color: Colors.white),
        ), // Titolo della barra superiore
      ),

      // Corpo della schermata
      body: Center(
        // Mostra l'immagine del QR Code al centro dello schermo
        child: Image.asset(imgUrl, width: 300, height: 300),
        // Visualizza l'immagine passata come parametro
      ),
    );
  }
}

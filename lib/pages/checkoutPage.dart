// Importa il pacchetto Flutter per costruire l'interfaccia utente
import 'package:flutter/material.dart';

// Importa la pagina QR Code
import 'qrCodePage.dart';

// Definizione della classe Checkoutpage come StatelessWidget
class Checkoutpage extends StatelessWidget {
  // Dichiarazione dei parametri finali per questa classe
  final String title; // Titolo del prodotto
  final String price; // Prezzo del prodotto
  final String name; // Nome del cliente
  final String email; // Email del cliente
  final String phone; // Numero di telefono del cliente
  final String address; // Indirizzo del cliente
  final String imgUrl; // URL immagine del prodotto

  // Costruttore della classe con parametri obbligatori
  const Checkoutpage({
    super.key, // Chiave opzionale per il widget
    required this.title, // Parametro obbligatorio
    required this.price, // Parametro obbligatorio
    required this.name, // Parametro obbligatorio
    required this.email, // Parametro obbligatorio
    required this.phone, // Parametro obbligatorio
    required this.address, // Parametro obbligatorio
    required this.imgUrl, // Parametro obbligatorio
  });

  @override
  Widget build(BuildContext context) {
    // Ottiene le dimensioni dello schermo
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(79, 9, 248, 1), // Colore di sfondo
      appBar: AppBar(title: const Text('Secure Payment')), // AppBar con titolo
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Centra verticalmente i figli
        children: [
          // Card con l'immagine del prodotto e i suoi dati
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04), // Margini laterali
            child: Card(
              color: const Color(0xFFFFA9EC), // Colore di sfondo della card
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05), // Padding interno
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.3, // Larghezza dell'immagine
                      height: size.height * 0.2, // Altezza dell'immagine
                      child:
                          Image.asset(imgUrl), // Mostra l'immagine del prodotto
                    ),
                    SizedBox(
                        width:
                            size.width * 0.05), // Spazio tra immagine e testo
                    Column(
                      mainAxisAlignment:
                          MainAxisAlignment.start, // Allinea i testi in alto
                      children: [
                        Text(
                          title, // Titolo del prodotto
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(price), // Prezzo del prodotto
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Card con i dati di fatturazione
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02, // Margine verticale
              horizontal: size.width * 0.04, // Margine orizzontale
            ),
            child: Container(
              // Dimensioni del contenitore dei dati di fatturazione
              width: size.width * 0.9,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: const Color(0xFFFFA9EC), // Colore di sfondo
                borderRadius: BorderRadius.circular(10), // Bordo arrotondato
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, // Padding orizzontale
                  vertical: size.height * 0.02, // Padding verticale
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Allinea i testi in alto
                  children: [
                    const Text(
                      "Dati di fatturazione", // Titolo sezione
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                        height: size.height *
                            0.01), // Spazio tra titolo e contenuto
                    // Dati del cliente
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Allinea a sinistra
                          children: [
                            Text(name), // Nome del cliente
                            Text(email), // Email del cliente
                            Text(phone), // Telefono del cliente
                            Text(address), // Indirizzo del cliente
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Card con il metodo di pagamento
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04), // Margini laterali
            child: Card(
              color: const Color(0xFFFFA9EC), // Colore di sfondo della card
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, // Padding orizzontale
                  vertical: size.height * 0.02, // Padding verticale
                ),
                child: Column(
                  children: [
                    const Text(
                      "Metodo di pagamento", // Titolo della sezione
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .start, // Allinea gli elementi a sinistra
                      children: [
                        Image.asset(
                          "assets/images/PayPal.png", // Icona del metodo di pagamento
                          width: size.width * 0.1, // Larghezza dell'icona
                          height: size.height * 0.1, // Altezza dell'icona
                        ),
                        SizedBox(
                            width:
                                size.width * 0.05), // Spazio tra icona e email
                        Column(
                          children: [
                            Text(
                              email, // Mostra l'email associata al metodo di pagamento
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // Barra inferiore con il totale e il bottone per completare l'ordine
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: size.height * 0.1, // Altezza della barra inferiore
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra il contenuto orizzontalmente
            children: [
              // Testo con il totale
              Text(
                "Totale: € $price", // Mostra il totale dell'ordine
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: size.width * 0.05), // Spazio tra totale e bottone
              ElevatedButton(
                onPressed: () {
                  // Azione quando si clicca sul bottone
                  // Naviga alla pagina del QR Code
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const Qrcodepage(
                        imgUrl:
                            "assets/images/qrcode.png", // URL immagine del QR Code
                      ),
                    ),
                    (route) => false,
                  );
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xFFFFA9EC), // Colore di sfondo del bottone
                  ),
                ),
                child: const Text(
                  "Completa Ordine", // Testo del bottone
                  style: TextStyle(color: Colors.black), // Colore del testo
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Importa il pacchetto Flutter per costruire l'interfaccia utente
import 'package:flutter/material.dart';

// Importa il widget personalizzato per la barra di navigazione inferiore
import '../widgets/custom_bottom_navigator.dart';

// Importa la pagina di checkout
import 'checkoutPage.dart';

// Definizione della classe Eventdetails come StatelessWidget
class Eventdetails extends StatelessWidget {
  // Definizione dei parametri finali per questa classe
  final String title; // Titolo dell'evento
  final String date; // Data dell'evento
  final String indirizzoImmagine; // Percorso dell'immagine
  final String indirizzoEvento; // Indirizzo della sede dell'evento
  final String titleindirizzo; // Nome della sede dell'evento
  final String price; // Prezzo dell'evento
  final String organizer; // Nome dell'organizzatore
  final String hour; // Orario dell'evento
  final String logoUrl;

  // Costruttore della classe con parametri obbligatori
  const Eventdetails({
    super.key, // Chiave opzionale per il widgetxe
    required this.title, // Parametro obbligatorio
    required this.date, // Parametro obbligatorio
    required this.indirizzoImmagine, // Parametro obbligatorio
    required this.indirizzoEvento, // Parametro obbligatorio
    required this.price, // Parametro obbligatorio
    required this.organizer, // Parametro obbligatorio
    required this.hour, // Parametro obbligatorio
    required this.titleindirizzo, // Parametro obbligatorio
    required this.logoUrl,
  });

  @override
  Widget build(BuildContext context) {
    // Ottiene le dimensioni dello schermo
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(79, 9, 248, 1), // Colore di sfondo
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Allinea a sinistra i figli
        children: [
          Stack(
            children: [
              // Immagine dell'evento
              Image.asset(
                indirizzoImmagine, // Percorso dell'immagine
                height: size.height * 0.4, // Altezza dinamica
                width: size.width, // Larghezza dinamica
                fit: BoxFit.cover, // Adatta l'immagine senza deformarla
              ),
              // AppBar trasparente sovrapposta all'immagine
              Positioned(
                child: AppBar(
                  backgroundColor: Colors.transparent, // Sfondo trasparente
                  title: Text(
                    title, // Titolo dell'evento
                    style: const TextStyle(
                      fontSize: 24, // Dimensione del font
                      color: Colors.white, // Colore bianco
                      fontWeight: FontWeight.bold, // Grassetto
                    ),
                    textAlign: TextAlign.center, // Testo centrato
                  ),
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context); // Torna alla schermata precedente
                    },
                    icon: const Icon(
                      Icons.arrow_back, // Icona della freccia indietro
                      color: Colors.white, // Colore bianco
                      size: 30, // Dimensione dell'icona
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {}, // Azione per il pulsante bookmark
                      icon: const Icon(
                        Icons.bookmark, // Icona del segnalibro
                        color: Colors.white, // Colore bianco
                        size: 30, // Dimensione dell'icona
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Spazio verticale dopo l'immagine
          SizedBox(height: size.height * 0.02),

          // Sezione con i dettagli dell'evento
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05), // Margini laterali
            child: Column(
              children: [
                // Titolo dell'evento
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white, // Colore bianco
                    fontSize: 32, // Dimensione del font
                    fontWeight: FontWeight.bold, // Grassetto
                  ),
                  textAlign: TextAlign.center, // Testo centrato
                ),
                // Data e orario dell'evento
                ListTile(
                  leading: const Icon(
                    Icons.calendar_month, // Icona del calendario
                    color: Colors.white, // Colore bianco
                  ),
                  title: Text(
                    date, // Data dell'evento
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  subtitle: Text(
                    hour, // Orario dell'evento
                    style: const TextStyle(color: Colors.white70),
                  ),
                ),
                // Indirizzo dell'evento
                ListTile(
                  leading: const Icon(
                    Icons.location_on_outlined, // Icona della posizione
                    color: Colors.white, // Colore bianco
                  ),
                  title: Text(
                    titleindirizzo, // Nome della sede
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  subtitle: Text(
                    indirizzoEvento, // Indirizzo della sede
                    style: const TextStyle(color: Colors.white70),
                  ),
                ),
                // Organizzatore dell'evento
                ListTile(
                  leading: Image.asset(
                    logoUrl, // Icona dell'organizzatore
                    width: 40, // Larghezza dell'immagine
                    height: 40, // Altezza dell'immagine
                  ),
                  title: Text(
                    organizer, // Nome dell'organizzatore
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  subtitle: const Text(
                    "organizzatore", // Testo fisso
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
          // Riempitivo per spingere il bottone in basso
          const Spacer(),

          // Bottone "Acquista"
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16, vertical: 16), // Margini
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFFFFA9EC), // Colore di sfondo del bottone
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Angoli arrotondati
                ),
                minimumSize: const Size(
                    double.infinity, 50), // Larghezza e altezza minima
              ),
              onPressed: () {
                // Naviga alla pagina di checkout
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Checkoutpage(
                      title: title, // Passa il titolo
                      price: price, // Passa il prezzo
                      name: "Giovanni Imasso", // Nome fisso
                      email: "giovanni@gmail.com", // Email fissa
                      phone: "333 333 3333", // Numero fisso
                      address: "Via Roma 1, Roma, Italia", // Indirizzo fisso
                      imgUrl: indirizzoImmagine, // URL immagine
                    ),
                  ),
                );
              },
              child: const Text("Acquista € 7.99"), // Testo del bottone
            ),
          ),
        ],
      ),
      // Barra di navigazione inferiore personalizzata
      bottomNavigationBar: const CustomBottomNavigator(),
    );
  }
}

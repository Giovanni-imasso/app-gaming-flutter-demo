// Importa il pacchetto Flutter per usare i widget
import 'package:flutter/material.dart';

// Importa la pagina dei dettagli dell'evento
import 'package:gaming_app/pages/eventdetails.dart';

// Importa il widget EventCard
import 'package:gaming_app/widgets/EventCard.dart';

// Importa il widget CustomBottomNavigator
import '../widgets/custom_bottom_navigator.dart';

// Definizione della classe Homeview come StatefulWidget
class Homeview extends StatefulWidget {
  const Homeview({super.key}); // Costruttore con chiave opzionale

  @override
  State<Homeview> createState() => _Homeview(); // Crea lo stato del widget
}

// Definizione della classe privata _Homeview che gestisce lo stato di Homeview
class _Homeview extends State<Homeview> {
  // Stile di testo personalizzato
  TextStyle myStyle = const TextStyle(
    color: Colors.white, // Colore del testo
    fontSize: 18, // Dimensione del font
    fontWeight: FontWeight.bold, // Grassetto
  );

  @override
  Widget build(BuildContext context) {
    // Ottiene le dimensioni dello schermo
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor:
          Colors.deepPurple[900], // Colore di sfondo della schermata
      body: SingleChildScrollView(
        // Permette di scorrere verticalmente
        child: Column(
          children: [
            Stack(
              children: [
                // Immagine di sfondo
                Image.asset(
                  'assets/images/vr_image.png',
                  height: size.height * 0.4, // Altezza dinamica
                  width: double.infinity, // Larghezza completa
                  fit: BoxFit.cover, // Adatta l'immagine senza deformarla
                ),
                // Sovrapposizione con gradiente
                Container(
                  height: size.height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent, // Inizio trasparente
                        Colors.deepPurple.withOpacity(0.8), // Fine con opacità
                      ],
                      begin: Alignment.topCenter, // Inizio gradiente
                      end: Alignment.bottomCenter, // Fine gradiente
                    ),
                  ),
                ),
                // Posizionamento dei testi sopra l'immagine
                Positioned(
                  bottom: 20, // Distanza dal basso
                  left: 20, // Distanza da sinistra
                  right: 20, // Distanza da destra
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Centra i testi
                    children: [
                      // Titolo principale
                      Text(
                        "Evento Gaming",
                        style: myStyle,
                      ),
                      // Sottotitolo
                      Text(
                        "Un nuovo universo ",
                        style: myStyle,
                      ),
                      // Descrizione
                      Text(
                        "Un nuovo modo di approcciare al mondo del gaming e dello sviluppo dei videogiochi!",
                        style: myStyle.copyWith(
                          fontSize: 18, // Font ridotto
                          color: Colors.white70, // Colore più chiaro
                        ),
                        textAlign: TextAlign.center, // Testo centrato
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Spazio tra le sezioni
            SizedBox(height: size.height * 0.03), // 3% dell'altezza schermo

            // Sezione con le card degli eventi
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16), // Margini laterali
              child: SizedBox(
                height: size.height * 0.3, // Altezza della sezione
                child: ListView(
                  scrollDirection: Axis.horizontal, // Scorrimento orizzontale
                  children: [
                    // Card del primo evento
                    EventCard(
                      title: "Workshop e aperitivo",
                      date: "18th January 2025",
                      price: "7.99",
                      imageUrl: "assets/images/workshop_image.png",
                      ontap: () {
                        // Navigazione verso i dettagli dell'evento
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Eventdetails(
                              title: "Workshop e aperitivo",
                              date: "18 Gen 2025",
                              indirizzoImmagine:
                                  "assets/images/workshop_image.png",
                              indirizzoEvento: "Via Trucco, 70 -  10126 Torino",
                              price: "7.99",
                              organizer: "Nexus Legends",
                              hour: "16.00 -21.00",
                              titleindirizzo: "Oval Lingotto",
                              logoUrl: "assets/icons/nexus_legends.png",
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: size.width * 0.03), // Spazio tra le card
                    // Card del secondo evento
                    EventCard(
                      title: "Torneo di Zelda",
                      date: "19th January 2025",
                      price: "7.99",
                      imageUrl: "assets/images/zelda.jpg",
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Eventdetails(
                              title: "Torneo di Zelda",
                              date: "19 Gen 2025",
                              indirizzoImmagine: "assets/images/zelda.jpg",
                              indirizzoEvento: "Via Trucco, 70 -  10126 Torino",
                              price: "7.99",
                              organizer: "Nexus Legends",
                              hour: "09.00 - 18.00",
                              titleindirizzo: "Oval lingotto",
                              logoUrl: "assets/icons/nexus_legends.png",
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: size.width * 0.03), // Spazio tra le card
                    // Card del terzo evento
                    EventCard(
                      title: "Evento speciale",
                      date: "20th January 2025",
                      price: "9.99",
                      imageUrl: "assets/images/vr_image.png",
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Eventdetails(
                              title: "Evento speciale",
                              date: "20 Gen 2025",
                              indirizzoImmagine: "assets/images/vr_image.png",
                              indirizzoEvento: "Via Trucco, 70 -  10126 Torino",
                              price: "12.99",
                              organizer: "Nexus Legend",
                              hour: "16.00 -21.00",
                              titleindirizzo: "Oval lingotto",
                              logoUrl: "assets/icons/nexus_legends.png",
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            // Spazio finale tra la sezione e il bottone
            SizedBox(height: size.height * 0.03),

            // Spazio aggiuntivo
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ),
      // Barra di navigazione inferiore personalizzata
      bottomNavigationBar: const CustomBottomNavigator(),
    );
  }
}

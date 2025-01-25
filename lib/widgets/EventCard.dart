// Importazione del pacchetto di base Flutter per costruire l'interfaccia utente.
import 'package:flutter/material.dart';

// Definizione di una classe immutabile che rappresenta un widget personalizzato chiamato EventCard.
class EventCard extends StatelessWidget {
  // Dichiarazione delle proprietà finali del widget:
  // `title`, `date`, `price` e `imageUrl` sono stringhe che rappresentano rispettivamente il titolo, la data, il prezzo e il percorso dell'immagine per l'evento.
  // `ontap` è una funzione che verrà eseguita quando la card sarà cliccata.
  final String title;
  final String date;
  final String price;
  final String imageUrl;
  final VoidCallback ontap;

  // Costruttore della classe EventCard.
  // Ogni proprietà è contrassegnata come `required` per assicurarsi che venga passata un'istanza di ciascuna al momento della creazione del widget.
  const EventCard({
    super.key, // Utilizzo della chiave per identificare in modo univoco il widget nel widget tree.
    required this.title,
    required this.date,
    required this.price,
    required this.imageUrl,
    required this.ontap,
  });

  // Metodo obbligatorio che costruisce l'interfaccia del widget.
  @override
  Widget build(BuildContext context) {
    // Ottiene le dimensioni dello schermo del dispositivo corrente per un design responsivo.
    Size size = MediaQuery.of(context).size;

    // Restituisce un widget GestureDetector che rileva i tocchi su EventCard.
    return GestureDetector(
      onTap: () {
        // Esegue la funzione `ontap` quando l'utente tocca la card.
        ontap();
      },
      // Definizione di un widget Container che rappresenta il contenuto visivo della card.
      child: Container(
        width: size.width * 0.5, // Larghezza pari al 50% dello schermo.
        height: size.height * 0.30, // Altezza pari al 30% dello schermo.
        decoration: BoxDecoration(
          color: Colors.purpleAccent, // Colore di sfondo della card.
          borderRadius: BorderRadius.circular(15), // Angoli arrotondati.
          image: DecorationImage(
            image: AssetImage(imageUrl), // Carica l'immagine dal percorso fornito.
            fit: BoxFit.cover, // L'immagine copre completamente la card mantenendo le proporzioni.
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4), // Aggiunge un filtro nero semi-trasparente.
              BlendMode.darken, // Oscura l'immagine per migliorare la leggibilità del testo.
            ),
          ),
        ),
        // Aggiunge uno spazio interno di 10 pixel su tutti i lati del contenitore.
        padding: const EdgeInsets.all(10),
        // Colonna verticale che contiene i testi per la data, il titolo e il prezzo.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Allinea i figli a sinistra.
          mainAxisAlignment: MainAxisAlignment.end, // Posiziona i figli in fondo alla colonna.
          children: [
            // Mostra la data dell'evento con uno stile personalizzato.
            Text(
              date,
              style: const TextStyle(fontSize: 12, color: Colors.white70), // Testo piccolo e bianco semi-trasparente.
            ),
            const SizedBox(height: 4), // Spaziatura verticale di 4 pixel.
            // Mostra il titolo dell'evento in grassetto.
            Text(
              title,
              style: const TextStyle(
                fontSize: 14, // Dimensione del testo media.
                fontWeight: FontWeight.bold, // Stile grassetto.
                color: Colors.white, // Colore bianco.
              ),
            ),
            const SizedBox(height: 6), // Spaziatura verticale di 6 pixel.
            // Mostra il prezzo dell'evento con uno stile simile a quello della data.
            Text(
              price,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70, // Bianco semi-trasparente.
              ),
            ),
          ],
        ),
      ),
    );
  }
}

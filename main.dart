void main() {
  List<Musica> musicas = [
    Musica('Yume Utsutsu', 'Genso'),
    Musica('Hakucyumu', 'Genso'),
    Musica('Yugure', 'Genso'),
    Musica('Hisoyakani', 'Genso'),
    Musica('Hakanaki Haru No Ichimaku', 'Genso'),
    Musica('Ame Furu Yoru No Mukou', 'Genso'),
    Musica('Nihon Syonen No Natsu', 'Genso'),
    Musica('End of a Holiday', 'Genso'),
    Musica('A Summer Vacation', 'Genso'),
    Musica('Fuyu No Kage Ha Kanashimi', 'Genso'),
    Musica('Hatachi No Koi', 'Genso'),
    Musica('恋人へ', 'ECHOES & FOLKS'),
    Musica('秋の手紙*', 'ECHOES & FOLKS'),
    Musica('ベッドルームの午後は*', 'ECHOES & FOLKS'),
    Musica('夜の霧雨*', 'ECHOES & FOLKS'),
    Musica('ゆめうつつ', 'ECHOES & FOLKS'),
    Musica('部屋にひとり*', 'ECHOES & FOLKS'),
    Musica('彼女の時計*', 'ECHOES & FOLKS'),
    Musica('車窓', 'ECHOES & FOLKS'),
  ];
  
  int selecionada = 0;
  String filter = 'ECHOES & FOLKS';
  
  if (selecionada>musicas.length) {
     selecionada = musicas.length;
  }
  
  if (filter != null) {
    Display.displayWithFilter(filter, musicas);
  }
}

class Musica extends Album {
  String name;
  
  Musica(this.name, album) : super (album);
}

abstract class Album {
  String album;
  
  Album(this.album);
}

class Display {
  static void displayMusic(Musica musica) {
    print(
  '''
  | -------------------------------
  | Nome: ${musica.name}
  | Albúm: ${musica.album}
  | -------------------------------
  '''
    );
  }
  
  static void displayWithFilter (String filter, List<Musica> musicas) {
    print('| FILTERED KEY[$filter]: ');
    for (Musica musica in musicas.where((Musica musica)=>musica.album == filter)) {   
      Display.displayMusic(musica);
    }
  } 
}

-- liquibase formatted sql

-- changeset liquibase:1

INSERT INTO places(id, name, short_description, map_link, description_link, lat, lon)
VALUES
    (1, 'Zamek Królewski na Wawelu', 'Królewska rezydencja na wzgórzu w Krakowie, symbol polskiej historii.',
     'Wawel 5, 31-001 Kraków',
     'https://krakow.mpelczar.pl/zamek-krolewski-na-wawelu/', 50.0543, 19.9367),

    (2, 'Stare Miasto w Gdańsku', 'Historyczne centrum z gotycką i renesansową architekturą.',
     'Stare Miasto, 80-831 Gdańsk',
     'https://www.montravels.pl/gdansk-miasto-o-bogatej-historii-i-wyjatkowej-architekturze', 54.3483, 18.6466),

    (3, 'Kopalnia Soli w Wieliczce', 'Podziemny labirynt z solnymi rzeźbami i kaplicami.',
     'ul. Daniłowicza 10, 32-020 Wieliczka',
     'https://www.osmol.pl/kopalnia-soli-w-wieliczce-zwiedzajac-labirynt-podziemnych-tras/', 49.9983, 20.0716),

    (4, 'Zamek w Malborku', 'Jeden z największych zamków w Europie, dawna siedziba Zakonu Krzyżackiego.',
     'ul. Starościńska 1, 82-200 Malbork',
     'https://zamek.malbork.pl/pl', 54.0401, 19.0236),

    (5, 'Zakopane i Tatry', 'Popularny kurort i brama do Tatr — polskich gór z malowniczymi szlakami.',
     'ul. Kościuszki 13, 34-500 Zakopane',
     'https://www.zakopane.pl/strefa-turystyczna/turystyka/tatry/', 49.2997, 19.9495),

    (6, 'Mazury', 'Tysiące jezior połączonych kanałami — raj dla turystów i żeglarzy.',
     'ul. Smętka 1/1, 11-500 Giżycko',
     'https://turystyka.wp.pl/jeziora-mazurskie-raj-dla-zeglarzy-6043988438917761g', 54.0322, 21.7613),

    (7, 'Puszcza Białowieska', 'Ostatni i największy fragment pierwotnego lasu w Europie, dom żubrów.',
     'Park Pałacowy 11, 17-230 Białowieża',
     'https://bpn.com.pl/index.php?Itemid=178&id=104&option=com_content&task=view', 52.7017, 23.8539),

    (8, 'Wrocław – miasto krasnali', 'Urocze miasto z gotyckim centrum i setkami brązowych krasnali.',
     'ul. Rzeźnicza 1, 50-129 Wrocław',
     'https://www.hoteljasek.com.pl/wroclawskie-krasnale-i-ich-historia/', 51.1079, 17.0385),

    (9, 'Łódź – miasto street artu i fabryk', 'Nowoczesna sztuka, dziedzictwo przemysłowe i ulica Piotrkowska.',
     'ul. Piotrkowska 89, 90-423 Łódź',
     'https://www.montravels.pl/lodz-jako-stolica-designu-i-kultury-przewodnik-po-najwazniejszych-miejscach', 51.7592, 19.4560),

    (10, 'Kazimierz Dolny', 'Malownicze miasteczko nad Wisłą, centrum polskiej bohemy i sztuki.',
     'ul. Zamkowa 3/5, 24-120 Kazimierz Dolny',
     'https://pl.abpoland.com/miasta/kazimierz-dolny-pl', 51.3191, 21.9560);

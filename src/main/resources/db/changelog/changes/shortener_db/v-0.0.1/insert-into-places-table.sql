-- liquibase formatted sql

-- changeset liquibase:1

INSERT INTO places(id, name, short_description, map_link, description_link)
VALUES
    (1, 'Zamek Królewski na Wawelu', 'Królewska rezydencja na wzgórzu w Krakowie, symbol polskiej historii.',
     'https://www.google.com/maps?q=Вавельский+замок,+Краков,+Польша',
     'https://krakow.mpelczar.pl/zamek-krolewski-na-wawelu/'),

    (2, 'Stare Miasto w Gdańsku', 'Historyczne centrum z gotycką i renesansową architekturą.',
     'https://www.google.com/maps?q=Gdańsk+Old+Town,+Польша',
     'https://www.montravels.pl/gdansk-miasto-o-bogatej-historii-i-wyjatkowej-architekturze'),

    (3, 'Kopalnia Soli w Wieliczce', 'Podziemny labirynt z solnymi rzeźbami i kaplicami.',
     'https://www.google.com/maps?q=Wieliczka+Salt+Mine,+Польша',
     'https://www.osmol.pl/kopalnia-soli-w-wieliczce-zwiedzajac-labirynt-podziemnych-tras/'),

    (4, 'Zamek w Malborku', 'Jeden z największych zamków w Europie, dawna siedziba Zakonu Krzyżackiego.',
     'https://www.google.com/maps?q=Malbork+Castle,+Польша',
     'https://zamek.malbork.pl/pl'),

    (5, 'Zakopane i Tatry', 'Popularny kurort i brama do Tatr — polskich gór z malowniczymi szlakami.',
     'https://www.google.com/maps?q=Zakopane,+Poland',
     'https://www.zakopane.pl/strefa-turystyczna/turystyka/tatry/'),

    (6, 'Mazury', 'Tysiące jezior połączonych kanałami — raj dla turystów i żeglarzy.',
     'https://www.google.com/maps?q=Mazury,+Poland',
     'https://turystyka.wp.pl/jeziora-mazurskie-raj-dla-zeglarzy-6043988438917761g'),

    (7, 'Puszcza Białowieska', 'Ostatni i największy fragment pierwotnego lasu w Europie, dom żubrów.',
     'https://www.google.com/maps?q=Białowieża+Forest,+Poland',
     'https://bpn.com.pl/index.php?Itemid=178&id=104&option=com_content&task=view'),

    (8, 'Wrocław – miasto krasnali', 'Urocze miasto z gotyckim centrum i setkami brązowych krasnali.',
     'https://www.google.com/maps?q=Wrocław,+Poland',
     'https://www.hoteljasek.com.pl/wroclawskie-krasnale-i-ich-historia/'),

    (9, 'Łódź – miasto street artu i fabryk', 'Nowoczesna sztuka, dziedzictwo przemysłowe i ulica Piotrkowska.',
     'https://www.google.com/maps?q=Łódź,+Poland',
     'https://www.montravels.pl/lodz-jako-stolica-designu-i-kultury-przewodnik-po-najwazniejszych-miejscach'),

    (10, 'Kazimierz Dolny', 'Malownicze miasteczko nad Wisłą, centrum polskiej bohemy i sztuki.',
     'https://www.google.com/maps?q=Kazimierz+Dolny,+Poland',
     'https://pl.abpoland.com/miasta/kazimierz-dolny-pl')
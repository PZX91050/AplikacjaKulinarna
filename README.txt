Wymagane rozszerzenia do Visual Studio :
- Œrodowisko.NET framework 4.8 ( kompilator i ogólnie zwi¹zane z nim dodatki)
- SQL Server Express 2019 LocalDB ( bez tego nie powstanie baza ani nie bêd¹ dostêpne funkcje).
- SQL Server Data Tools
- Menad¿er pakietów Nuget wraz z pakietami zwi¹zanymi z aplikacj¹.


INSTRUKCJA

1.Po uruchomieniu programu baza danych powinna sama siê utworzyæ ( przez skrypt z Program.cs) oraz sama uzupe³niæ przy pomocy danych z pliku baza.sql

Gdyby siê to nie uda³o, proszê:

1. Proszê uruchomiæ program, pojawi siê strona startowa. 
2. Nastêpnie proszê odpaliæ plik baza.sql w Solution Explorer ( CTRL + SHIFT + ALT) -> Database - > bazaZapasowa.sql -> 
klikamy zielon¹ strza³ke albo CTRL + SHIFT + E.
3. Pojawi siê okno Connect, wybieramy zak³adkê Browse -> Local -> MSSQLLocalDB -> Klikamy Connect (Opcje poni¿ej mo¿na zostawiæ niezmienione)
4. Proszê uruchomiæ ponownie aplikacje, wszystkie dane powinny byæ za³adowane.
5. Po zarejestrowaniu siê ( lokalna rejestracja ), na stronie g³ównej pojawi¹ siê pozosta³e kafelki z funkcjami.


Funkcje programu 

Rejestracja/Logowanie - Ka¿dy zalogowany u¿ytkownik uzyskuje dostêp do w³asnego "magazynu produktów" na podstawie którego wyœwietlane s¹ mo¿liwe do zrealizowania przepisy.

Bez zalogowania :
- Przegl¹daj wszystkie przepisy

Z zalogowaniem :
- Przegl¹d wszystkich przepisów + sprawdzenie jakich produktów nam brakuje do przygotowania danego przepisu.
- "Twoje sk³adniki w domu" - Dodawanie wczeœniej przygotowanych sk³adników do swojej listy, mo¿liwoœæ póŸniej modyfikacji iloœci, czy usuniêcia.
- "Przepisy mo¿liwe do przygotowania" - Wyœwietla obecnie mo¿liwe do zrobienia przepisy.
- "Wyœwietl przepisy do danej kwoty"
- "Przepisy w ramach bud¿etu" - Wyœwietla po wprowadzeniu przepisy mo¿liwe do zrobienia w danym bud¿ecie, uwzglêdniaj¹c obecnie posiadane sk³adniki.



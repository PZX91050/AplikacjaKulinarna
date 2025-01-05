Wymagane rozszerzenia do Visual Studio :
- �rodowisko.NET framework 4.8 ( kompilator i og�lnie zwi�zane z nim dodatki)
- SQL Server Express 2019 LocalDB ( bez tego nie powstanie baza ani nie b�d� dost�pne funkcje).
- SQL Server Data Tools
- Menad�er pakiet�w Nuget wraz z pakietami zwi�zanymi z aplikacj�.


INSTRUKCJA

1.Po uruchomieniu programu baza danych powinna sama si� utworzy� ( przez skrypt z Program.cs) oraz sama uzupe�ni� przy pomocy danych z pliku baza.sql

Gdyby si� to nie uda�o, prosz�:

1. Prosz� uruchomi� program, pojawi si� strona startowa. 
2. Nast�pnie prosz� odpali� plik baza.sql w Solution Explorer ( CTRL + SHIFT + ALT) -> Database - > bazaZapasowa.sql -> 
klikamy zielon� strza�ke albo CTRL + SHIFT + E.
3. Pojawi si� okno Connect, wybieramy zak�adk� Browse -> Local -> MSSQLLocalDB -> Klikamy Connect (Opcje poni�ej mo�na zostawi� niezmienione)
4. Prosz� uruchomi� ponownie aplikacje, wszystkie dane powinny by� za�adowane.
5. Po zarejestrowaniu si� ( lokalna rejestracja ), na stronie g��wnej pojawi� si� pozosta�e kafelki z funkcjami.


Funkcje programu 

Rejestracja/Logowanie - Ka�dy zalogowany u�ytkownik uzyskuje dost�p do w�asnego "magazynu produkt�w" na podstawie kt�rego wy�wietlane s� mo�liwe do zrealizowania przepisy.

Bez zalogowania :
- Przegl�daj wszystkie przepisy

Z zalogowaniem :
- Przegl�d wszystkich przepis�w + sprawdzenie jakich produkt�w nam brakuje do przygotowania danego przepisu.
- "Twoje sk�adniki w domu" - Dodawanie wcze�niej przygotowanych sk�adnik�w do swojej listy, mo�liwo�� p�niej modyfikacji ilo�ci, czy usuni�cia.
- "Przepisy mo�liwe do przygotowania" - Wy�wietla obecnie mo�liwe do zrobienia przepisy.
- "Wy�wietl przepisy do danej kwoty"
- "Przepisy w ramach bud�etu" - Wy�wietla po wprowadzeniu przepisy mo�liwe do zrobienia w danym bud�ecie, uwzgl�dniaj�c obecnie posiadane sk�adniki.



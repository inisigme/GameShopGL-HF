# GameShopGL-HF

Niniejszy projekt jest schematem sklepu z grami. Składa się z następujących modułów:

* **Database** - Obsługuje połączenie z zewnętrzną bazą danych MSSQL
* **EFGameShopDatabase** - Adapter pozwalający na operacje dostępu do konkretnych danych serwisu
* **GameShopWebAPI** - REST API z podstawowymi operacjami na sklepie
* **Klient** - Najprostszy klient wyświetlający wszystkie przedmioty z bazy
* **UnitTestProject1**	- Test jednostkowy weryfikujący zawartość bazy testowj
* **WCFGameShopWarehouseService** - WCF'owy serwis sklepu

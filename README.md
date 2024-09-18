# IRESOFT

## Zadání

Cílem úkolu je:
- nalezení chyb v aplikaci
- návrh automatizace

Výsledkem by měl být:
- seznam nalezených chyb dle priorit
- zpracování návrhu automatizace

Časová náročnost:
- 12 až 16 hodin

## Přípravná fáze

- Dokumentace, z dokumentace jsou následně zvořeny požadavky. Oba tyto dokumnety jsou tvořeny v markadownfilu

- Požadavky, z požadavků jsou následně tvořeny testovací scénáře, pod testovacím snénářem prosím rozumějte test. Požadavky jsou do testovacích scénářů prolinkovány, takže je možné implementovat tracebility (schopnost sledovat pokrytí požadavku testu).


- Efektivní pokrytí
    1. pozitivní -- validní data
    2. negativní -- chybný vstup nebo neočekávané situaci

Vemte prosím na vědomí, že pro tento úkol byla s ohledem na čas vytvořena pouze základní, obecná dokumnetace a požadavky, které plně neprokývají celý rozsah nároků na jednotlivé komponenty a funkčnost mezi nimi, stejně jako neočekávané situace.

## Testovací fáze
Ukázka automatizace testů

- Každý test ***musí*** mít aspoň jeden odkaz na požadavek nebo bug.
- Každý test ***musí*** mít aspoň jeden tag.

Příklad jak může být spuštěn:

```python
 rcc run --silent --task test_0001.robot
```

Výsledky testů jsou uloženy do složky report.

## Reportovací
Součástí reportu je verze firmwaru, datum a čas spuštení testu.

Soubory v pdf formátu nejsou automaticky tvořeny v rámci rcc prostředí, byly manuálně přidány pro ukázku, jak report vypadá. Nicméně z logů jednotlivých testů je možné vytvořit pdf report s výsledky všech testů, které byly v rámci testovací fáze spuštěny.

## Poznámky

- Nebyly pokryty požadavky na bezpečnost (brute force prevention)
- Nebyly pokryty požadavky na řízení ztráty připojení a opětovné připojení
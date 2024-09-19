# Obsah

1. [Přístup a autentizace aplikace](#1-přístup-a-autentizace-aplikace)
   - [Fáze tvorby účtu a prvního přihlášení](#fáze-tvorby-účtu-a-prvního-přihlášení)
   - [Fáze přihlášení](#fáze-přihlášení)
   - [Proces odhlášení](#proces-odhlášení)
2. [Veřejný chat](#2-veřejný-chat)
3. [Soukromý chat](#3-soukromý-chat)
4. [Nastavení uživatele](#4-nastavení-uživatele)
   - [Zálohování a obnovení profilu](#zálohování-a-obnovení-profilu)

## 1. Přístup a autentizace aplikace

### Fáze tvorby účtu aprvního přihlášení


#### REQ_0001
Po zadání IP adresy se zobrazí přihlašovací stránka aplikace.

#### REQ_0002
Aplikace ***musí*** umožnit uživatelům vytvořit nový účet zadáním unikátního uživatelského jména, přihlašovacího jména a hesla.

#### REQ_0003
Aplikace ***musí*** vyžadovat potvrzení hesla zadáním hesla podruhé během procesu registrace.

#### REQ_0004
Aplikace ***musí*** zajistit, že hesla splňují základní pravidla zabezpečení a poskytne uživatelům informace o těchto pravidlech při prvním přihlášení.

#### REQ_0005
Pro úspěšnou registraci ***musí*** být vyplněna všechna pole registračního formuláře.

### Fáze přihlášení


#### REQ_0006
Aplikace ***musí*** umožnit uživatelům přihlásit se pomocí uživatelského jména a hesla.

#### REQ_0007
Pokud jsou přihlašovací údaje neplatné, aplikace ***musí*** zobrazit chybovou zprávu „Neplatné uživatelské jméno nebo heslo“.

#### REQ_0009
Uživatelé ***musí*** mít možnost zahájit proces resetování hesla prostřednictvím odkazu „Zapomenuté heslo“, který spustí resetování prostřednictvím e-mailu.

### Proces odhlášení


#### REQ_0010
Aplikace ***musí*** umožnit uživatelům manuálně se odhlásit pomocí tlačítka „Odhlásit“ na stránce profilu uživatele.

#### REQ_0011
Po manuálním odhlášení ***musí*** být data relace zneplatněna a uživatel přesměrován na přihlašovací obrazovku.

#### REQ_0012
Aplikace ***musí*** automaticky odhlásit uživatele po určité době neaktivity (session timeout).

#### REQ_0013
Po odhlášení ***musí*** být veřejná a soukromá historie chatu zachována.

## 2. Veřejný chat


#### REQ_0014
Aplikace ***musí*** umožnit uživatelům odesílat a přijímat textové zprávy v reálném čase ve veřejné chatovací místnosti.

#### REQ_0015
Zprávy ve veřejném chatu ***musí*** zobrazovat stavy jako „odesláno“, „doručeno“ a „přečteno“ (volitelné dle návrhu).

#### REQ_0016
U zprávy ve veřejném chatu ***musí*** být zobrazeno datum a čas, kdy byly poslány.

#### REQ_0017
Tlačítko „Poslat“ ***musí*** být aktivní pouze tehdy, když je v textovém poli napsána zpráva.

## 3. Soukromý chat


#### REQ_0018
Aplikace ***musí*** zobrazovat seznam uživatelů pro soukromou komunikaci.
#### REQ_0019
Aplikace ***musí*** umožnit uživatelům přidávat další uživatele do seznamu pro zahájení soukromé komunikace.

#### REQ_0020
Tlačítko „Přidat uživatele“ ***musí*** být aktivní v soukromém chatu pro přidání existujícího uživatele, se kterým nebyla soukromá konverzace zahájena, pro odesílání soukromých zpráv.

#### REQ_0021
Uživatelé ***musí*** mít možnost odebrat uživatele ze seznamu pro soukromou komunikaci.

#### REQ_0022
Tlačítko „Smazat uživatele“ ***musí*** být k dispozici v soukromém chatu pro odebrání uživatele ze seznamu účastníků. Po kliknutí na toto tlačítko ***musí*** být uživatel odstraněn z chatovacího vlákna.

#### REQ_0023
Uživatelé ***musí*** mít možnost odesílat soukromé zprávy.

#### REQ_0024
Soukromé chatovací vlákno ***musí*** být zobrazeno při kliknutí na jméno uživatele.

#### REQ_0025
U zprávy v soukromém chatu ***musí*** být zobrazeno datum a čas, kdy byly poslány.

#### REQ_0026
Odeslané zprávy v soukromém chatu ***musí*** zobrazovat stavy jako „odesláno“, „doručeno“ a „přečteno“ (pokud je to podporováno).

#### REQ_0027
URL soukromého chatu ***musí*** být jedinečná a konzistentní, založená na jedinečném identifikátoru uživatele (např. přihlašovací jméno nebo ID uživatele).

## 4. Nastavení uživatele


#### REQ_0028
Uživatelé ***musí*** mít možnost upravit své zobrazované uživatelské jméno, které se projeví ve veřejném i soukromém chatu.

#### REQ_0029
Uživatelé nemohou změnit své přihlašovací jméno, pod kterým se přihlašují do aplikace.

#### REQ_0030
Uživatelé ***musí*** mít možnost nahrát profilovou fotografii s podporou běžných obrazových formátů (např. JPEG, PNG) a omezením velikosti (např. do 2 MB), změna se projeví ve veřejném i soukromém chatu.

#### REQ_0031
Uživatelé ***musí*** mít možnost změnit své heslo v modulu profil.

#### REQ_0032
Na stránce profilu ***musí*** být tlačítko „Uložit“, které bude aktivní pouze tehdy, když byly provedeny změny v profilu.

#### REQ_0033
Kliknutím na tlačítko „Uložit“ ***musí*** být všechny změny uloženy a uživatel ***musí*** být informován o úspěšném uložení změn.

#### REQ_0034
Tlačítko „Smazat změny“ (Discard Changes) ***musí*** být viditelné na stránce profilu a umožnit uživatelům zrušit neuložené změny. Po kliknutí na tlačítko „Smazat změny“ ***musí*** být všechny neuložené změny vráceny na poslední uložený stav.

### Zálohování a obnovení profilu


#### REQ_0035
Aplikace ***musí*** umožnit uživatelům se statusem administrator vytvářet zálohy svých soukromých, veřejných chatových a profilových dat ve formátu JSON.

#### REQ_0036
Záloha ***musí*** obsahovat soukromé a veřejné konverzace, profilová data a možnosti umístění zálohy (lokálně nebo v cloudu).

#### REQ_0037
Uživatelé ***musí*** mít možnost obnovit data ze zálohy.

#### REQ_0038
Pokud je soubor zálohy poškozen nebo ve špatném formátu, aplikace ***musí*** zobrazit chybovou zprávu „Neplatný formát souboru zálohy“.

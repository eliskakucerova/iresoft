## Requirement: Po zadání IP adresy se zobrazí přihlašovací stránka aplikace.

### TS0048
1. Scénář: 
    - Kroky:
        1. Uživatel zadá do weboového prohlížeče adresu aplikace.
        2. Po načtení se zobrazí pouze přihlašovací stránka aplikace
    - Očekávaný výsledek: Zobrazí se pouze přihlašovací/registrační stránka aplikace

## Requirement: Aplikace musí umožnit uživatelům vytvořit nový účet zadáním unikátního uživatelského jména, přihlašovacího jména a hesla.

### TS0001
1. Scénář:
    - Kroky:
        1. Uživatel otevře registrační formulář.
        2. Uživatel zadá unikátní uživatelské jméno a validní heslo.
        3. Uživatel klikne na aktivní tlačítko „Registrovat“.
    - Očekávaný výsledek: Účet je úspěšně vytvořen.

### TS0002
1. Scénář:
    - Kroky:
        1. Uživatel otevře registrační formulář.
        2. Uživatel vyplní registrační formulář s již existujícím uživatelským jménem.
        3. Uživatel nemůže kliknout na neaktivní tlačítko „Registrovat“.
    - Očekávaný výsledek: Aplikace zobrazí chybovou zprávu „Uživatelské jméno již existuje“.

## Requirement: Aplikace musí vyžadovat potvrzení hesla zadáním hesla podruhé během procesu registrace.

### TS0003
1. Scénář:
    - Kroky:
        1. Uživatel otevře registrační formulář.
        2. Uživatel vyplní pole hesla a potvrzení hesla stejným validním heslem.
        3. Uživatel se pokusí o registraci.
    - Očekávaný výsledek: Registrace proběhne úspěšně.

### TS0004
1. Scénář:
    - Kroky:
        1. Uživatel otevře registrační formulář.
        2. Uživatel zadá odlišné heslo do pole potvrzení hesla.
        3. Uživatel nemůže kliknout na neaktivní tlačítko „Registrovat“.
    - Očekávaný výsledek: Aplikace zobrazí chybovou zprávu „Hesla se neshodují“ a registrace neproběhne.

## Requirement: Po vyplnění všech požadovaných údajů musí být k dispozici tlačítko „Registrovat“.

### TS0005
1. Scénář:
    - Kroky:
        1. Uživatel otevře registrační formulář.
        2. Uživatel vyplní formulář se všemi povinnými poli.
    - Očekávaný výsledek: Tlačítko „Registrovat“ je aktivní a uživatel může dokončit registraci.

### TS0006
1. Scénář:
    - Kroky:
        1. Uživatel otevře registrační formulář.
        2. Uživatel ponechá některá povinná pole prázdná.
    - Očekávaný výsledek: Tlačítko „Registrovat“ zůstane neaktivní a uživatel nemůže dokončit registraci.

## Requirement: Aplikace musí umožnit uživatelům přihlásit se pomocí uživatelského jména a hesla.

### TS0007
1. Scénář:
    - Kroky:
        1. Uživatel otevře přihlašovací formulář.
        2. Uživatel zadá správné uživatelské jméno a heslo.
        3. Uživatel klikne na tlačítko „Přihlásit“.
    - Očekávaný výsledek: Uživatel je úspěšně přihlášen do aplikace.

### TS0008
1. Scénář:
    - Kroky:
        1. Uživatel otevře přihlašovací formulář.
        2. Uživatel zadá špatné uživatelské jméno nebo heslo.
        3. Uživatel klikne na tlačítko „Přihlásit“.
    - Očekávaný výsledek: Uživatel není úspěšně přihlášen do aplikace.

## Requirement: Pokud jsou přihlašovací údaje neplatné, aplikace musí zobrazit chybovou zprávu „Neplatné uživatelské jméno nebo heslo“.

### TS0009
1. Scénář:
    - Kroky:
        1. Uživatel otevře přihlašovací formulář.
        2. Uživatel zadá špatné uživatelské jméno nebo heslo.
        3. Uživatel klikne na tlačítko „Přihlásit“.
    - Očekávaný výsledek: Aplikace zobrazí chybovou zprávu „Neplatné uživatelské jméno nebo heslo“.

## Requirement: Uživatelé musí mít možnost zahájit proces resetování hesla prostřednictvím odkazu „Zapomenuté heslo“, který spustí resetování prostřednictvím e-mailu.

### TS0010
1. Scénář:
    - Kroky:
        1. Uživatel klikne na odkaz „Zapomenuté heslo“.
        2. Uživatel zadá svůj e-mail, na který chce zaslat resetovací odkaz.
        3. Aplikace zašle e-mail s odkazem na resetování hesla.
    - Očekávaný výsledek: Uživatel obdrží e-mail a může resetovat heslo.

## Requirement: Po pěti chybných pokusech o přihlášení během jedné minuty musí být uživateli na jednu minutu znemožněno zadávat heslo.

### TS0011
1. Scénář:
    - Kroky:
        1. Uživatel otevře přihlašovací formulář.
        2. Uživatel zadá 5c po sobě během jedné minuty špatné heslo
    - Očekávaný výsledek: Na jednu minutu je znemožněno přihlášení do aplikace

## Requirement: Aplikace musí umožnit uživatelům manuálně se odhlásit pomocí tlačítka „Odhlásit“ na stránce profilu uživatele.

## Requirement: Po manuálním odhlášení musí být data relace zneplatněna a uživatel přesměrován na přihlašovací obrazovku.

### TS0012
1. Scénář:
    - Kroky:
        1. Uživatel otevře stránku svého profilu.
        2. Uživatel klikne na tlačítko „Odhlásit“.
    - Očekávaný výsledek: Uživatel je úspěšně odhlášen a přesměrován na přihlašovací obrazovku.

## Requirement: Aplikace musí automaticky odhlásit uživatele po určité době neaktivity (session timeout).

### TS0015
1. Scénář:
    - Kroky:
        1. Uživatel se přihlásí a zůstane neaktivní po dobu stanovenou pro vypršení relace (5 minut).
    - Očekávaný výsledek: Aplikace automaticky odhlásí uživatele a přesměruje ho na přihlašovací obrazovku.

## Requirement: Po odhlášení musí být veřejná a soukromá historie chatu zachována.

### TS0017
1. Scénář:
    - Kroky:
        1. Uživatel se odhlásí z aplikace.
        2. Uživatel se znovu přihlásí.
    - Očekávaný výsledek: Veřejná i soukromá historie chatu zůstane neporušená a dostupná po přihlášení.

## Requirement: Zprávy ve veřejném chatu musí zobrazovat stavy jako „odesláno“, „doručeno“ a „přečteno“ (volitelné dle návrhu).

### TS0019
1. Scénář:
    - Kroky:
        1. Uživatel je na veřejném chatu
        2. Uživatel 1 odešle zprávu.
        3. Zpráva je úspěšně odeslána, doručena a přečtena Uživatel 2.
    - Očekávaný výsledek: Zpráva zobrazí stavy „odesláno“, „doručeno“ a po přečtení Uživatel 2 „přečteno“.

## Requirement: U zprávy ve veřejném chatu musí být zobrazeno datum a čas, kdy byly poslány.

### TS0021
1. Scénář:
    - Kroky:
        1. Uživatel je na veřejném chatu
        2. Uživatel 1 odešle zprávu.
        3. Zpráva se zobrazí s časem a datem.
    - Očekávaný výsledek: Datum a čas jsou shodné s místním lokálním časem.

## Requirement: Tlačítko „Poslat“ musí být aktivní pouze tehdy, když je v textovém poli napsána zpráva.

### TS0022
1. Scénář:
   - Kroky:
      1. Uživatel je na veřejném chatu
      2. Uživatel zadá text do textového pole.
      3. Tlačítko „Poslat“ se aktivuje.
   - Očekávaný výsledek: Tlačítko „Poslat“ je aktivní poté, co je do textového pole zadán text.

## Requirement: Aplikace musí umožnit uživatelům přidávat další uživatele do seznamu pro zahájení soukromé komunikace.

## Requirement: Tlačítko „Přidat uživatele“ musí být aktivní v soukromém chatu pro přidání nového existujícího uživatele pro odesílání soukromých zpráv.

### TS0023
1. Scénář:
   - Kroky:
      1. Uživatel 1 otevře seznam uživatelů a vybere Uživatel 2.
      2. Uživatel 1 klikne na aktivní tlačítko „Přidat do soukromé komunikace“.
      3. Uživatel 2 je přidán do seznamu pro soukromý chat.
   - Očekávaný výsledek: Uživatel 1 úspěšně přidá Uživatel 2 do seznamu pro soukromou komunikaci a může zahájit soukromý chat.

### TS0032
1. Scénář:
   - Kroky:
      1. Uživatel 1 zadá existující uživatelské jméno v aplikaci.
      2. Tlačítko „Přidat uživatele“ je aktivní, je možné na něj kliknout.
      3. Uživatel 3 je úspěšně přidán do nové soukromé chatovací místnosti.
   - Očekávaný výsledek: Uživatel 3 je úspěšně přidán do soukromého chatu.

## Requirement: Uživatelé musí mít možnost odebrat uživatele ze seznamu pro soukromou komunikaci.

### TS0024
1. Scénář:
   - Kroky:
      1. Uživatel 1 otevře seznam uživatelů, se kterými má soukromý chat.
      2. Uživatel 1 vybere Uživatel 2 a klikne na tlačítko „Odebrat ze soukromé komunikace“.
   - Očekávaný výsledek: Uživatel 1 úspěšně odebere Uživatel 2 ze seznamu pro soukromou komunikaci.

## Requirement: Uživatelé musí mít možnost odesílat soukromé zprávy.

### TS0026
1. Scénář:
   - Kroky:
      1. Uživatel 1 napíše zprávu a klikne na tlačítko „Odeslat“.
      2. Zpráva je doručena Uživatel 2.
   - Očekávaný výsledek: Zpráva od Uživatele 1 je úspěšně odeslána a doručena Uživateli 2.

## Requirement: Soukromé chatovací vlákno musí být zobrazeno při kliknutí na jméno uživatele.

### TS0028
1. Scénář:
   - Kroky:
      1. Uživatel 1 klikne na jméno Uživatel 2 v seznamu soukromých chatů.
      2. Aplikace otevře celé soukromé chatovací vlákno mezi Uživatelem 1 a Uživatelem 2.
   - Očekávaný výsledek: Soukromé chatovací vlákno je správně zobrazeno včetně historie zpráv.

## Requirement: U zprávy v soukromém chatu musí být zobrazeno datum a čas, kdy byly poslány.

### TS0029
1. Scénář:
   - Kroky:
      1. Uživatel 1 odešle zprávu Uživateli 2 v soukromém chatu.
      2. Aplikace zobrazí zprávu s přesným datem a časem odeslání.
   - Očekávaný výsledek: Zpráva zobrazuje správné datum a čas odeslání vedle zprávy.

## Requirement: Odeslané zprávy v soukromém chatu musí zobrazovat stavy jako „odesláno“, „doručeno“ a „přečteno“ (pokud je to podporováno).

### TS0030
1. Scénář:
   - Podmínky: Aplikace podporuje stav zpráv v soukromém chatu.
   - Kroky:
      1. Uživatel 1 odešle zprávu Uživateli 2.
      2. Aplikace zobrazí stav zprávy „odesláno“.
      3. Zpráva je doručena a stav se změní na „doručeno“.
      4. Uživatel 2 si zprávu přečte, stav se změní na „přečteno“.
   - Očekávaný výsledek: Aplikace správně zobrazuje stavy zpráv „odesláno“, „doručeno“ a „přečteno“.

## Requirement: URL soukromého chatu musí být jedinečná a konzistentní, založená na jedinečném identifikátoru uživatele (např. přihlašovací jméno nebo ID uživatele).

### TS0031
1. Scénář:
   - Kroky:
      1. Uživatel 1 zahájí soukromý chat s Uživatelem 2.
      2. Aplikace vygeneruje jedinečnou URL adresu založenou na identifikátoru uživatele.
      3. Uživatel zkopíruje a otevře URL adresu a chatovací vlákno je zobrazeno správně.
   - Očekávaný výsledek: URL adresa soukromého chatu je jedinečná a odpovídá specifikovanému uživateli.

## Requirement: Uživatelé musí mít možnost upravit své zobrazované uživatelské jméno, které se projeví ve veřejném i soukromém chatu.

### TS0035
1. Scénář:
   - Podmínky: Uživatel je přihlášen do aplikace a chce změnit své zobrazované uživatelské jméno.
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Přejde na stránku pro nastavení profilu.
     3. Změní své zobrazované uživatelské jméno na nové.
     4. Uloží změny kliknutím na tlačítko „Uložit“.
     5. Otevře veřejný chat a soukromou zprávu.
     6. Ověří, že nové uživatelské jméno se zobrazuje ve veřejném chatu i ve všech soukromých zprávách.
   - Očekávaný výsledek: Nové zobrazované uživatelské jméno je úspěšně aktualizováno ve všech chatech.

## Requirement: Uživatelé nemohou změnit své přihlašovací jméno, pod kterým se přihlašují do aplikace.

### TS0036
1. Scénář:
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Přejde na stránku pro nastavení profilu.
     4. Ověří, že není možné změnit přihlašovací jméno.
   - Očekávaný výsledek: Uživatel nemá možnost změnit své přihlašovací jméno.

## Requirement: Uživatelé musí mít možnost nahrát profilovou fotografii s podporou běžných formátů (např. JPEG, PNG) a omezením velikosti (např. do 2 MB). Změna se projeví ve veřejném i soukromém chatu.

### TS0037
1. Scénář:
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Přejde na stránku pro nastavení profilu.
     3. Nahraje profilovou fotografii ve formátu JPEG o velikosti 1 MB.
     4. Uloží změny kliknutím na tlačítko „Uložit“.
     5. Ověří, že profilová fotografie byla úspěšně nahrána a zobrazuje se v profilu.
     6. Otevře veřejný chat a soukromou zprávu.
     7. Ověří, že nová profilová fotografie se zobrazuje jak ve veřejném, tak i soukromém chatu.
   - Očekávaný výsledek: Profilová fotografie je úspěšně nahrána a zobrazuje se ve všech chatech.


## Requirement: Uživatelé musí mít možnost změnit své heslo v modulu profil.

### TS0039
1. Scénář:
   - Podmínky: Uživatel chce změnit své heslo.
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Přejde na stránku pro nastavení profilu.
     3. Zvolí možnost změny hesla.
     4. Zadá nové heslo a uloží změny kliknutím na tlačítko „Uložit“.
     5. Ověří, že nové heslo je funkční při příštím přihlášení.
   - Očekávaný výsledek: Nové heslo je úspěšně uloženo a funkční při dalším přihlášení.

---

## Requirement: Na stránce profilu musí být tlačítko „Uložit“, které bude aktivní pouze tehdy, když byly provedeny změny v profilu.

### TS0040
1. Scénář:
   - Podmínky: Uživatel provede změny v profilu.
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Přejde na stránku pro nastavení profilu.
     3. Provede změny v profilu.
     4. Ověří, že tlačítko „Uložit“ je aktivní.
     5. Po kliknutí na „Uložit“ tlačítko je deaktivováno, když jsou změny uloženy.
   - Očekávaný výsledek: Tlačítko „Uložit“ je aktivní pouze při změně profilu a deaktivuje se po uložení.


## Requirement: Po kliknutí na tlačítko „Uložit“ musí být všechny změny uloženy a uživatel musí být informován o úspěšném uložení změn.

### TS0041
1. Scénář:
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Přejde na stránku pro nastavení profilu.
     3. Provede změny v profilu.
     4. Klikne na tlačítko „Uložit“.
     5. Ověří, že změny byly úspěšně uloženy a zobrazila se potvrzovací zpráva.
   - Očekávaný výsledek: Změny v profilu jsou uloženy a uživatel obdrží potvrzení o úspěšném uložení.

## Requirement: Tlačítko „Smazat změny“ (Discard Changes) musí být viditelné na stránce profilu a umožnit uživatelům zrušit neuložené změny.

### TS0042
1. Scénář:
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Přejde na stránku pro nastavení profilu.
     3. Provede změny v profilu.
     4. Klikne na tlačítko „Smazat změny“.
     5. Ověří, že všechny neuložené změny byly vráceny na poslední uložený stav.
   - Očekávaný výsledek: Neuložené změny jsou zrušeny a profil se vrátí do posledního uloženého stavu.

## Requirement: Aplikace musí umožnit uživatelům se statusem Administrator vytvářet zálohy svých soukromých chatových a profilových dat ve formátu JSON.

### TS0042
1. Scénář:
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Přejde na stránku pro zálohování dat.
     3. Vytvoří zálohu svých dat ve formátu JSON.
     4. Ověří, že záloha obsahuje soukromé konverzace a profilová data.
   - Očekávaný výsledek: Záloha obsahuje soukromé konverzace a profilová data.


## Requirement: Záloha musí obsahovat soukromé a veřejné konverzace, profilová data a možnosti umístění zálohy (lokálně nebo v cloudu).

### TS0043
1. Scénář:
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Přejde na stránku pro zálohování dat.
     3. Vytvoří zálohu a vybere možnost uložit ji na lokální uložiště.
     4. Ověří, že záloha obsahuje soukromé. veřejné konverzace a profilová data a byla úspěšně uložena na lokálním uložišti
   - Očekávaný výsledek: Záloha je uložena na lokálním uložišti a obsahuje soukromé konverzace a profilová data.


## Requirement: Uživatelé musí mít možnost obnovit data ze zálohy.

### TS0045
1. Scénář:
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Přejde na stránku pro obnovu dat.
     3. Vybere zálohu k obnovení.
     4. Ověří, že data byla úspěšně obnovena.
   - Očekávaný výsledek: Data byla úspěšně obnovena ze zálohy.


## Requirement: Pokud je soubor zálohy poškozený nebo ve špatném formátu, aplikace musí zobrazit chybovou zprávu „Neplatný formát souboru zálohy"

### TS0046
1. Scénář:
   - Kroky:
     1. Uživatel se přihlásí do aplikace.
     2. Pokusí se obnovit data z poškozeného souboru zálohy.
     3. Ověří, že aplikace zobrazila chybovou zprávu „Neplatný formát souboru zálohy“ 
   - Očekávaný výsledek: Aplikace zobrazí chybovou zprávu „Neplatný formát souboru zálohy“  nebo 

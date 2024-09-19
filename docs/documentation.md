# Dokumentace

## Obsah
1. [Úvod](#úvod)
2. [Přístup a autentizace aplikace](#přístup-a-autentizace-aplikace)
3. [Veřejný chat](#veřejný-chat)
4. [Soukromý chat](#soukromý-chat)
5. [Nastavení uživatele](#nastavení-uživatele)
6. [Zálohování a obnovení dat](#zálohování-a-obnovení-dat)

---

## Úvod
Tato aplikace je chatovací platforma, která umožňuje uživatelům přihlašování, komunikaci ve skupinových i soukromých chatovacích místnostech a personalizaci uživatelského účtu. Tato dokumentace popisuje jednotlivé funkcionality aplikace. Po zadání adresy aplikace se zobrazí pouze přihlašovací stránka aplikace bez možnosti zobrazení profilu nebo jakéhokoli chatu.

---

## Přístup a autentizace aplikace
Tato sekce se zabývá tvorbou účtu, přihlašováním, odhlašováním a procesem obnovení spojení, aby uživatelé mohli bezpečně přistupovat ke svým datům.

### Tvorba účtu / první přihlášení
**Popis:** Uživatel si vytváří nový účet, pokud dosud žádný nemá.
- **Proces registrace:**
    - Uživatel zadá unikátní uživatelské jméno, které bude viditelné v chatovacích místnostech.
    - Uživatel zadá přihlašovací jméno a heslo.
    - Heslo musí být zadáno dvakrát pro potvrzení.
    - Po vyplnění všech údajů může uživatel kliknout na tlačítko "Registrovat".

### Přihlášení
**Popis:** Uživatelé se přihlašují do aplikace pomocí svých přihlašovacích údajů.
- **Hlavní funkce:**
    - Zadané přihlašovací údaje jsou ověřeny.
    - Pokud je jméno nebo heslo nesprávné, zobrazí se chybová zpráva "Neplatné uživatelské jméno nebo heslo".
    - Uživatel může kliknout na odkaz "Zapomenuté heslo" pro jeho resetování.

### Odhlášení
**Popis:** Uživatelé se mohou manuálně odhlásit nebo budou odhlášeni automaticky po neaktivitě (session timeout).
- **Hlavní funkce:**
    - Manuální odhlášení je možné tlačítkem "Odhlásit" v profilu.
    - Při automatickém odhlášení je chráněn účet uživatele (session timeout).
    - Data z chatu nejsou při odhlášení ztracena.

### Manipulace s heslem
- **Pravidla pro hesla:** Heslo musí splňovat základní bezpečnostní pravidla, která jsou zobrazena při prvním přihlášení.
- **Brute force prevence:** Po pěti chybných pokusech o přihlášení během jedné minuty je uživateli na jednu minutu zablokován další pokus.
- **Změna hesla:** Uživatel může změnit heslo v nastavení profilu, přičemž musí opětovně zadat nové heslo pro potvrzení. Změněné heslo musí splňovat základní bezpečnostní pravidla pro tvorbu hesla.

---

## Veřejný chat
**Popis:** Veřejná chatovací místnost umožňuje uživatelům odesílat a přijímat zprávy, které jsou viditelné pro všechny v reálném čase.

### Hlavní funkce:
- **Odesílání a přijímání zpráv:** Zprávy jsou viditelné všem uživatelům.
- **Stavy zpráv:** Možné stavy zahrnují "odesláno", "doručeno" a "přečteno".
- **Zobrazení data a času:** U zprávy ve veřejném chatu musí být zobrazeno datum a čas, kdy byly poslány.
- **Možnost odeslání:** Tlačítko „Poslat“ musí být aktivní pouze tehdy, když je v textovém poli napsána zpráva. 

---

## Soukromý chat
**Popis:** Uživatelé mohou odesílat přímé soukromé zprávy ostatním uživatelům.

### Hlavní funkce:
- **Přidání a odebrání uživatele:** Možnost přidat či odebrat uživatele pro soukromou konverzaci.
- **Odesílání a přijímání soukromých zpráv:** Komunikace probíhá pouze mezi dvěma uživateli.
- **Seznam uživatelů:** Zobrazení seznamu uživatelů, s nimiž probíhala komunikace.
- **Stavy zpráv:** Stejně jako ve veřejném chatu ("odesláno", "doručeno", "přečteno").
- **Zobrazení data a času:** U zprávy ve veřejném chatu musí být zobrazeno datum a čas, kdy byly poslány.
- **Možnost odeslání:** Tlačítko „Poslat“ musí být aktivní pouze tehdy, když je v textovém poli napsána zpráva. 

### Struktura URL soukromého chatu
- Každý uživatel má jedinečnou URL pro soukromý chat, která by měla být konzistentní a založená na unikátním a neměnném přihlašovacím jménu nebo unikátním ID.


---

## Nastavení uživatele
**Popis:** Uživatelé mohou spravovat své osobní informace.

### Hlavní funkce:
- **Úprava uživatelského jména:** Možnost změnit zobrazované jméno, které se projeví ve všech chatovacích místnostech.
- **Nemožnost změnit přihlašovací jméno:** Přihlašovací jméno nelze změnit.
- **Nahrání profilové fotografie:** Podpora běžných formátů (JPEG, PNG) a omezení velikosti (do 2 MB).
- **Uložení změn:** Uživatelé obdrží potvrzení o úspěšné aktualizaci.

---

## Zálohování a obnovení dat
**Popis:** Administrátoři mají možnost zálohovat nebo obnovit chatová a profilová data.

### Hlavní funkce:

#### Vytvoření zálohy
- **Formát:** Záloha je uložena ve formátu JSON.

 - **Vzor JSON formátu:**
    ```json
    {
      "profile": {
        "username": "JohnDoe",
        "name": "John Doe",
        "profile_picture": "image_url"
      },
      "private_chats": [
        {
          "chat_with": "JaneSmith",
          "messages": [
            { "timestamp": "2024-09-09T12:34:56Z", "message": "Hey, Jane!", "sender": "JohnDoe" },
            { "timestamp": "2024-09-09T12:35:10Z", "message": "How's it going?", "sender": "JohnDoe" }
          ]
        }
      ]
    }
    ```

- **Data zahrnutá v záloze:** 
    - Konverzace soukromá a veřejná.
    - Profilová data (jméno, bio, profilová fotografie).
- **Umístění zálohy:** Zálohu lze uložit lokálně nebo do cloudu.
- **Frekvence zálohování:** Možnost manuálního nebo automatického zálohování.

#### Obnovení zálohy
- **Nahrání zálohy:** Administrátor může vybrat soubor zálohy ve formátu JSON.
- **Sloučení nebo přepsání dat:** Uživatel může zvolit, zda se data sloučí nebo přepíší.
- **Zpracování chyb:** Pokud je záloha poškozena nebo ve špatném formátu, zobrazí se chybová zpráva.
- **Potvrzení:** Po úspěšném obnovení aplikace informuje uživatele, že data byla obnovena.

---


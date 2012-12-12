Political Science Data Dive tai neformalus renginys vykęs 2012 gruodžio 8 d.
[Vilniaus Universitete](http://www.vu.lt) [Matematikos ir Informatikos
Fakultete](http://www.mif.vu.lt). Renginio metu buvo analizuojami duomenys iš
Seimo rinkimų, kandidatų deklaracijų ir kiti vieši su politika susiję duomenys.

Duomenų analizė visados prasideda nuo duomenų. Nors Vyriausioji rinkimų komisija
visus duomenis skelbia viešai internete, jos pateikiamu formatu analizės
padaryti neįmanoma. Tam kad renginyje duomenis būtų galima analizuoti
organizatoriai užtruko apie porą savaičių juos siųsdamiesi ir tvarkydami.
Renginyje buvo pasiūlytas vienas variantas kaip duomenys galėtų būti
[pateikiami](http://dydra.com/graphity/lithuanian-politics). Sukurtame puslapyje galima greitai išrūšiuoti partijas pagal
vidutinį jiems priklausančių kandidatų turtą.

Per šių metų rinkimus buvo galima pamatyti rezultatus tiesiogiai ant žemėlapio.
Tokią galimybę bendradarbiaudama su VRK suteikė UAB ["Hnit-Baltic"](http://www.hnit-baltic.lt/). Renginio
metu buvo pabandyta rinkimų pateikti įdomesnių geografinės rinkimų informacijos.
Buvo pabandyta susieti informacija apie savivaldybių gyventojus su rinkimų
[rezultatais](http://vrk.maps.arcgis.com/home/webmap/viewer.html?webmap=978e3a37e1374b6c95f0bb9f2c21aa73). 

Čia matome kaip rinkimų rezultatai priklauso nuo to koks
savivaldybėse yra nedarbo lygis. Tamsesne spalva pavaizduotos savivaldybės su
didesniu nedarbo lygiu, o kiekvienas taškas atitinka rinkimų apylinkę, su spalva
simbolizuojančia partiją kuri toje apylinkėje surinko daugiausiai balsų.

![Nedarbas](https://github.com/vzemlys/psdatadive12/raw/master/Geo/Nedarbas.png)

O šiame grafike matome kaip rinkimuose sekėsi valdžioje esančioms partijoms. 

![Pozicija](https://github.com/vzemlys/psdatadive12/raw/master/Geo/Pozicija.png)

Matome, kad rinkėjai buvo negailestingi valdžioje buvusioms partijoms beveik
visoje Lietuvoje, išskyrus didžiuosius miestus ir keletą paskirų apylinkių. Taip pasireiškė
vadinamoji "rinkimų švytuoklė", Lietuvos fenomenas, kai kiekvienais rinkimais
rinkėjai baudžia valdžioje esančias partijas. Renginio metu šis fenomenas buvo
detaliau panagrinėtas. Šiame grafike matosi kaip nukenčia valdžioje esančios partijos. 

![grafike](https://github.com/vzemlys/psdatadive12/raw/master/Svytuokle/balsavimas_uz_pozicija_opozicija.png) 

Įdomu pastebėti, kad šiuose rinkimuose opozicijos pergalė palyginama su 1996 metų
įvykusiu pozicijos sutriuškinimu. Procentinis skirtumas 1996 tarp opozicijos ir
pozicijos sudarė apie 40%, o šiais metais apie 30%, kai 2000-2008 metais šis
skirtumas buvo vidutiniškai 15%. Galime spėti, kad to priežastis naujų
partijų prastas pasirodymas. 
Taip pat buvo pabandyta į kurią pusę labiau linksta rinkėjai. Šiame grafike matome kaip keitėsi rinkėjų pasirinkimas tarp kairiųjų ir
dešiniųjų kiekvienuose rinkimuose. 

![grafike](https://github.com/vzemlys/psdatadive12/raw/master/Svytuokle/svytuokle.jpg) 

Matome kad Lietuvoje rinkėjai labiau linkę
balsuoti už kairiuosius. Aišku reikia atsiminti, kad Lietuvoje skaidymas į
dešiniuosius ir kairiuosius yra sąlyginis. 

Ar apskritai Lietuvos rinkėjai yra ištikimi buvo pabandyta atsakyti šiuo
grafiku:

![Lietuvos
žemėlapio](https://github.com/vzemlys/psdatadive12/raw/master/Svytuokle/rinkeju-istikimumas.png).

Čia partijos buvo suskirstytos į blokus ir buvo suskaičiuota kaip dažnai
apygarda išrenka kandidatą iš kito bloko.  Matome kad Lietuvos rinkėjai nepasižymi didele ištikimybe. Neištikimiausi yra
Šiaulių, Panevėžio ir Klaipėdos miestų rinkėjai. Ištikimesni yra Kauno ir
Vilniaus miestų rinkėjai. Ištikimiausi rinkėjai gyvena pasienyje:
Šilutės-Pagėgių bei Vilniaus-Šalčininkų rinkimų apygardose. 

Renginio metu buvo pabandyta pažiūrėti kaip kiekvienos partijos kandidatų
skelbiamos turto deklaracijos atitinka Benfordo dėsnį. Šiame grafike
vaizduojamos didžiausių partijų kandidatų deklaracijų atitikimas Benfordo
dėsniui:
![Excel
failą](https://github.com/vzemlys/psdatadive12/raw/master/Benford/TurtasBenford.jpg)

Kaip matome labiausiai dėsnio
neatitinka Darbo partijos kandidatai. 

Reikėtų pastebėti, kad duomenų neatitikimas Benford'o dėsniui automatiškai
nereiškia, kad duomenys buvo suklastoti. Vienas iš dažniausiai pasitaikančių
neatitikimų yra duomenų su dideliais pirmais skaitmenimis trūkumas. Taip pat
reikia neužmiršti, kad už kandidatų deklaracijų duomenų patikimumą atsako tik
patys kandidatai, todėl jose gali būti klaidų, kurios taip pat gali iškreipti
atitikimą Benford'o dėsniui.

Taip pat buvo sukurta visų kandidatų turto vizualizacija

![Maza vizualizacija](https://github.com/vzemlys/psdatadive12/raw/master/Turtas/turtinis_kandidatu_pasiskirstymas.jpg)

Šiame grafike pavaizduotas visų kandidatų turtas. Visi kandidatai išdėstyti skritulio
išorėje abėcėlės tvarka. Kiekvieno kandidato turtas yra pavaizduotas juodu
spinduliu. Spindulio ilgis atitinka kandidato turimą turtą. Išrinkti kandidatai
yra papildomai paryškinti vienodo ilgio kitos spalvos spinduliais.  Turint  šį
grafiką lengva identifikuoti turtingiausius kandidatus, tai Viktorą Uspaskichą
ir Vladimirą Romanovą (jo turtą teko pamažinti, kad vizualizacija atrodytų
geriau).

Natūralu, kad rinkimuose dalis biuletenių visados bus sugadinta.
Dažniausios to priežastys yra žmonių klaidos arba protesto išreiškimas. Bet šios
priežastys turėtų lemti mažai kintantį sugadintų biuletenių procentą. Norint
patikrinti šią hipotezę buvo lyginamas pirmo bei
antro rinkimų turo sugadintų biuletenių skaičius vienmandatėse apygardose. 
Buvo analizuojami pastarieji trys rinkimai. Kaip ir tikėtasi vidutiniškai
antrame ture biuletenių yra sugadinama mažiau: 

![turai](https://github.com/vzemlys/psdatadive12/raw/master/Negaliojantys/turai.png)

Bet buvo atrastas įdomus faktas, kad
šių metų rinkimai išsiskiria ypatingu nukrypimu nuo normos. Per 2004 ir 2008
metų rinkimus, antrame ture buvo daugiau sugadinta biuletenių atitinkamai
devyniose ir aštuoniose rinkimų apygardose:

![2004-clean](https://github.com/vzemlys/psdatadive12/raw/master/Negaliojantys/2004_clean_kadidatai.png)

![2008-clean](https://github.com/vzemlys/psdatadive12/raw/master/Negaliojantys/2008_clean_kadidatai.png)

O per šiuos rinkimus tokių apygardų
jau buvo dvidešimt keturios. 

![2012-clean](https://github.com/vzemlys/psdatadive12/raw/master/Negaliojantys/2012_clean_kadidatai.png)

Tarp tokių apygardų dažniausiai patenka Vilniaus
miestui bei didesniems miestams priklausančios apygardos.

Naudojant statistinę analizę galima išskirti kurios kandidato savybės lemia
išrinkimą į Seimą. Šioje analizėje buvo naudojamos tos kandidato savybės kurios
yra pateiktos kandidato deklaracijoje: amžius, išsilavinimas, turtas, šeimyninė
padėtis, užsienio kalbų mokėjimas, faktas ar kandidatas jau yra buvęs Seimo
nariu bei teistumo informacija. 

Šiame grafike pavaizduota kiekvienos iš šių savybių svarba. Didesnę svarbą
atitinka didesnė reikšmė. Matome, kad trys svarbiausios savybės lemiančios
kandidato išrinkimą yra turtas, amžius bei tai ar jis jau yra buvęs Seimo nariu
ar ne.

![Svarba](https://github.com/vzemlys/psdatadive12/raw/master/Savybes/savybes.png)

### 2012 metų rinkimai

![2012v](https://raw.github.com/vzemlys/psdatadive12/master/Wordcloud/2012wcv.png)


Lyginant
skirtingų rinkimų žodžių debesis matome, kad 2012 metais daugiausiai balsų gavo
kandidatai nurodę "Ekonomistas" savo išsilavinime, bei tai kad žodžių debesyje
pirmą kartą pasirodo žodžiai "Mykolo Riomerio" ir "Klaipėdos".

Visi žinome, kad yra gausybė valdžios institucijų. Bet kaip jos susiję ir kiek
jų iš viso yra nėra lengva sužinoti. Renginio metu buvo pabandyta surinkti visa
viešai prieinama informacija apie valstybės aparatą ir pabandyta pavaizduoti.
Vieną iš vizualizacijos pavyzdžių galima rasti šiuo
[adresu](http://pd12.petraszd.com). Šiame puslapyje valstybės aparato struktūra
pavaizduota kaip medis. Kiekviena šaka yra institucija kuri išsiskleidžia į
kitas šakas - pradinei institucijai pavaldžias institucijas. Šakas galima
suskleisti taip susikoncrentruojant tik ties dominančiais institucijų ryšiais.

Rezultatų pristatyme taip buvo pateikta keletas kitokių valstybės aparato medžio
vaizdų. Šiame grafike matome "išplokštintą" medį. 

![grafike](https://github.com/vzemlys/psdatadive12/raw/master/Valstybe/Screen%20Shot%202012-12-09%20at%2011.31.37%20AM.png)

O šiame kiekviena institucija pavaizduota kaip didelė ląstelė, o jos padaliniai kaip
mažesnės ląstelės didelės ląstelės viduje.

![šiame](https://github.com/vzemlys/psdatadive12/raw/master/Valstybe/Screen%20Shot%202012-12-09%20at%2011.32.12%20AM.png)



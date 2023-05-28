-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 08:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internetinis_knygynas`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `pages` int(11) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `available_quantity` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `number_of_ratings` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year` varchar(4) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `format` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `new_book` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `category`, `pages`, `description`, `price`, `image`, `available_quantity`, `publisher`, `rating`, `number_of_ratings`, `author`, `year`, `ISBN`, `format`, `language`, `status`, `new_book`) VALUES
(1, 'Mechanika ir termodinamika', 'Pratybos', 212, 'Leidinys skirtas VGTU visų specialybių studentams, studijuojantiems fizinių mokslų srities, fizikos 02P krypties bendrosios fizikos dalies mechanikos ir termodinamikos kursus. Nagrinėjamos fizinių dydžių paklaidos, sukamojo judėjimo, svyravimų ir bangų sklidimo dėsningumai, molekulinės fizikos bei termodinamikos dėsniai. Laboratoriniai darbai sugrupuoti pagal tematikas nurodant skyrius, kuriuose supažindinama su nagrinėjamų fizinių reiškinių pobūdžiu. Aprašyti laboratorinių darbų tikslai, priemonės, darbo atlikimo metodikos, nurodytos pagrindinės rezultatų skaičiavimų formulės. Darbo aprašų pabaigoje pateikti kontroliniai klausimai ir nagrinėtai temai skirtas literatūros sąrašas.', '7.25', 'https://drive.google.com/uc?id=1TVSzoOq1vZPm2sReOdrbYCWyBg15wBlF', '13', 'Technika', 0, 0, 'N. Astrauskienė, R.A. Bendorius, A. Bogdanovičius', '2009', '9789955285267', '14,5 x 20,5 x 1,3 cm, minkšti viršeliai', 'lietuvių', 'Turime sandėlyje.', 0),
(2, 'Gaublys. Gamtinė geografija. Pratybų sąsiuvinis 11-12 klasei (II dalis)', 'Vadovėlis. Vidurinis ugdymas', 40, 'Gamtinė geografija“ ir „Visuomeninė geografija“ yra geografijos baigiamosios mokymosi pakopos vadovėliai. Jie įrėmina pagrindinėje mokykloje įgytas geografijos žinias ir artina mokinį prie geografijos egzamino. Mokytojų patirtis rodo, kad nemažai jų vyresnėse klasėse geografijos mokymą tiesiogiai sieja su pasirengimu geografijos egzaminui.\nAntrojoje vadovėlį papildančioje mokymo priemonėje pateikiama daug su geografiniais gebėjimais susijusių užduočių. Jos atitinka visas svarbiausias gamtinės geografijos ugdymo turinio sritis. Pateikiamos topografinio vardyno, rašytinių šaltinių analizės, darbo su žemėlapiais, informacijos paieškos internete, schemų sudarymo ir pildymo bei kitos užduotys.\nPratybų sąsiuviniai nuosekliai ir kryptingai padės prisiminti ir įtvirtinti svarbiausią mokomąją medžiagą, gebėjimus bei sėkmingai pasiruošti geografijos brandos egzaminui.', '4.99', 'https://drive.google.com/uc?id=1I12xk2Fbuy1VGBih8vMEWhhsl0VsuNOb', '22', 'Didakta', 0, 0, 'Rytas Šalna, Mantas Šiumeta, Robertas Šalna', '2019', '9786094421327', '19 x 27 cm, minkšti viršeliai', 'Lietuvių', 'Turime sandėlyje.', 0),
(3, 'Šag za šagom 5. Pratybų sąsiuvinis', 'Pratybos. Pagrindinis ugdymas', 72, '«Шаг за шагом. Новый 5» yra vadovėlį papildanti mokomojo komplekto dalis. Pratybos padeda įtvirtinti mokomąją medžiagą, gramatinių ir leksinių formų ir struktūrų vartojimo, taip pat skaitymo ir rašymo įgūdžius. Kiekvienos temos pradžioje gimtąja kalba formuluojami mokymosi uždaviniai, o temos pabaigoje mokiniui suteikiama galimybė savarankiškai atlikti testą, pasitikrinti jo rezultatus, taip pat įsivertinti (skirsnis ,,Mokomės įsivertinti“) pagal išsamų temos gebėjimų aprašą. Pratybų sąsiuvinyje pateikiamas pagrindinių vadovėlio ir pratybų sąsiuvinio užduočių formuluočių vertimas į lietuvių kalbą, trumpas teminis leksikos žodynėlis.', '5.19', 'https://drive.google.com/uc?id=1D9HooStvqgI9xSfE2Flpmkatk7KVRSxY', '6', 'Presvika', 0, 0, 'Marytė Puzaitė, Loreta Šernienė', '2012', '9789955225959', '21 x 27,5 cm, minkšti viršeliai', 'Rusų', 'Turime sandėlyje.', 0),
(4, 'Fizikos pasitikrinamieji testai 12 klasei, serija Korepetitorius', 'Pratybos. Vidurinis ugdymas', 96, 'Šie pasitikrinamieji testai sudaro galimybę mokiniui mokytis papildomai ir nuosekliai gerinti pasiekimus kartojant viduriniojo ugdymo fizikos kursą bei rengiantis fizikos egzaminui.\r\n\r\nMokinys čia ras 9 kompleksinius testus, kuriuos sudaro:\r\n• trumpas konkrečios temos teorijos ir pasiekimų pagal Bendrąją ugdymo programą (BUP) priminimas;\r\n• pagal numatytą temą pateiktos teorijos taikymo ir įsivertinimo užduotys;\r\n• pasiekimų ir gebėjimų aprašai, įsivertinimo taškais ir balais skalės.\r\nAntroje leidinio dalyje pateikti 10 kartojimo testų leis greitai pasitikrinti įgytas žinias ir gebėjimus, apibendrinti 12 klasės kursą.\r\n\r\nSavarankiškas pasitikrinimas ir įsivertinimas numatytas kiekviename teste. Tam prieš testą mokiniui duodamos gebėjimų gairės (AŠ TAI MOKU!). Atlikus testą įsivertinama pagal surinktus taškus ir pasiekimų lygius. Leidinyje pateikta ir viso 12 klasės kurso pasiekimų diagrama – pagal ją mokinys galės sekti savo metinius rezultatus, o mokytojas formuoti individualų kaupiamąjį vertinimą.\r\nUžduočių atsakymai pateikiami interneto svetainėje www.sviesa.lt prie leidinio anotacijos.\r\n\r\nSerijos „Korepetitorius\" leidiniai skirti mokinių savarankiškam darbui, taip pat mokytojui, ieškančiam susistemintos patikros temai ar kursui kartoti, mokinių testams, kontroliniams ar individualiems darbams.', '8.99', 'https://drive.google.com/uc?id=1hpPjZaTCY530H_uYlgE1o34EtX-ztLST', '21', 'Šviesa', 0, 0, 'Rigonda Skorulskienė', '2021', '9785430070656', '21 x 29 x 0,6 cm, minkšti viršeliai', 'Lietuvių', 'Turime sandėlyje.', 1),
(5, 'Istorijos užduotys 10 (II gimnazijos) klasei', 'Pratybos. Pagrindinis ugdymas', 152, 'Nors planuojama, kad atnaujintos Bendrosios programos bus pradėtos diegti 2023 m., tačiau jau dabar leidykla „UGDA\" skuba mokytojams į pagalbą ir pristato naują BANDOMĄJĄ mokymo(si) priemonę. Įdiegus naująsias programas ji dar bus tobulinama, koreguojama ir bus laukiama mokytojų pasiūlymų. Šią mokymo(si) priemonę galima pradėti naudoti (išbandyti) jau dabar, nes joje daug užduočių tinka mokytis ir pagal dabartinę programą.\r\n\r\nŠis bandomasis leidinys parengtas remiantis 2021 m. istorijos bendrojo ugdymo Bendrosios programos projektu ir skirtas 10 (II gimnazijos) klasės mokiniams. Istorijos užduočių sąsiuvinyje rasite 40 temų, kuriose įvairiais aspektais nagrinėjamas laikotarpis nuo 1918 m. iki šių dienų. Leidinyje gausu įvairaus tipo užduočių, kurios padės ne tik analizuoti Naujausiųjų laikų įvykius, bet ir ugdyti įvairias mokinių kompetencijas.', '11.49', 'https://drive.google.com/uc?id=1cChc_4ZS2ofHCbB8fvUW8Jx-0Z7OYJAU', '5', 'UGDA', 0, 0, 'Virginijus Navickas', '2022', '9786098051452', '21 x 29,5 x 0,5 cm, minkšti viršeliai', 'Lietuvių', 'Turime sandėlyje.', 1),
(6, 'Fizika. Vadovėlis 9 klasei', 'Vadovėlis. Pagrindinis ugdymas', 168, 'FIZIKA 9 yra tų pačių autorių fizikos vadovėlių VII ir VIII klasei tęsinys, todėl jo turinio dėstymo principai ir struktūra tokia pati kaip vadovėlių VII ir VIII klasei.\r\n\r\nVadovėlio komplektą sudaro:\r\n\r\nVadovėlis\r\n\r\nPratybų sąsiuviniai. 1-asis ir 2-asis sąsiuvinis.\r\n\r\n \r\n\r\nDalyko turinį sudaro dvi dalys: „Šiluma“ ir „Elektra“. Jos suskirstytos į devynis skyrius, o šie - į skyrelius, kurie sudaryti laikantis tam tikro nuoseklumo: mokinių teigiamą mokymosi motyvaciją skatinanti medžiaga - per pamokas atliekamų bandymų aprašai, vėliau - išvados ir teoriniai apibendrinimai bei naujų nagrinėjamų reiškinių praktiniai, taikomieji aspektai. Pateikiama medžiaga ir siūlomi metodai remiasi mokinių anksčiau įgyta patirtimi ir žiniomis, jau pažįstamais reiškiniais, supančia aplinka, sociokultūriniu kontekstu, ugdo gamtamokslinio komunikavimo gebėjimus.\r\n\r\nKiekvieno skyrelio pabaigoje yra įvairaus sudėtingumo užduočių (klausimų ir uždavinių). Jas atlikdami, mokiniai mokysis pastebėti fizikinius reiškinius konkrečiomis sąlygomis, juos lyginti, išskirti pagrindines ar bendrąsias savybes, jas apibūdinti, formuluoti užduotis pagal pateikiamus pradinius duomenis ir panašiai.\r\n\r\nVisi skyriai baigiami santraukomis - priminimais, ką reikėjo išmokti, kas skyriuje yra svarbiausia. Pakartoti skyriaus medžiagą, pasitikrinti žinias bei gebėjimus ir pasirengti kontroliniam darbui mokiniai galės atlikdami skyriaus pabaigoje pateikiamas kompleksines savikontrolės užduotis.\r\n\r\nVadovėlio pabaigoje yra užduočių atsakymai: skyrelių užduočių - tik kai kurie, o savikontrolės užduočių - visi. Čia taip pat pateikiama kirčiuota dalykinė ir pavardžių rodyklė.\r\n\r\n \r\n\r\nDailininkė Vytautė Zovienė.\r\n\r\nDizainerė Kristina Jėčiūt', '17.19', 'https://drive.google.com/uc?id=1Pmttmyx42oSAmDpyH_bagHhm-BDo56yx', '33', 'Šviesa', 0, 0, 'Vladas Valentinavičius, Zita Šliavaitė', '2012', '9785430055462', '19,5 x 26 x 0,7 cm, minkšti viršeliai', 'Lietuvių', 'Turime sandelyje', 1),
(7, 'Biologija. Vadovėlis 11-12 klasei. Ląstelė - gyvybės pagrindas.', 'Vadovėlis. Vidurinis ugdymas', 244, 'Šį vadovėlį sudaro trys dalys: metodologiniai biologijos klausimai, ląstelė – gyvybės pagrindas ir medžiagų apykaita bei pernaša. Nagrinėjant biologijos metodologijos temą, aptariami biologijos mokslo raidos dėsningumai pasaulyje, taip pat skiriama dėmesio Lietuvos mokslininkų indėliui į biologijos mokslo raidą. Mokantis ugdomi biologijos tiriamųjų metodų taikymo gebėjimai, tobulinami saugaus ir atsakingo darbo įgūdžiai atliekant tyrimus, laboratorinius darbus, stebėjimus. Pateikiama žinių apie ląstelę – mažiausią organizmo dalelę, nagrinėjama jos sandara ir aiškinami ląstelėje vykstantys procesai, jų reikšmė organizmo gyvybinei veiklai. Medžiagų apykaitos pernašos tema atskleidžia įvairių organizmų prisitaikymo unikalumą vykstant dujų apykaitai ir medžiagų pernašai.\r\n\r\nVadovėlis skiriamas XI–XII klasės mokiniams, kurie turi pakankamai biologijos žinių, todėl turinio neriboja vien įvardytos programos temos. Čia rasite ir daugiau medžiagos, kuri padeda plėsti akiratį, geriau suprasti nagrinėjamų temų kontekstą. Ši medžiaga žymima kita spalva.', '22.19', 'https://drive.google.com/uc?id=1qf47j56okNpSTKVee7cNY0kK8CIXucxN', '9', 'Šviesa', 0, 0, 'Jolanta Martinionienė, Jurgis Kadzijauskas, Inga Viltrakienė', '2012', '9785430058180', '20 x 29 cm, minkšti viršeliai', 'Lietuvių', 'Turime sandėlyje.', 0),
(8, 'Mokslininkų pėdomis. Gamtos mokslų vadovėlis 6 klasei. Antroji knyga (ŠOK)', 'Vadovėlis. Pagrindinis ugdymas', 68, 'Integruotas gamtos mokslų vadovėlis šeštai klasei.', '16.19', 'https://drive.google.com/uc?id=1naQ6oq0PSw8_bPh_1rI7m4U-AllnqakU', '7', 'Šviesa', 0, 0, 'Juozas Raugalas, Loreta Geleževičiūtė, Genovaitė Vitalienė, Saulė Vingelienė, Daiva Bigelienė, Elena Motiejūnienė, Jolanta Dzikavičiūtė', '2008', '9785430050450', '20 x 26 cm, minkšti viršeliai', 'Lietuvių', 'Turime sandėlyje!', 1),
(9, '123 diktantai pradinukams', 'Pratybos. Pradinis ugdymas', 40, 'Netesinga manyti, kad diktantų knygelės reikalingos tik mokytojams. Žinodami savo mokinių galimybes, jie patys puikiausiai gali sukurti tinkamiausią pamokai diktantą. Vaikuose slypi nenumaldomas noras parodyti, ką jie išmoko. Ir nesvarbu - rašyti ar plaukti. Neretai šis vaikų troškimas užklumpa tėvus ar senelius. Ir tada diktantų knygelė jų rankose daro įspūdį. Pradinukas pasijunta lyg pamokoj pas labai artimą mokytoją. Jis nesidrovi paklausti, ko dar nesupranta ir labai nesielvartauja, jei suklydo. Tokios pamokėlės neįkainuojamos naudos vaikams duoda atostogų metu. Padeda išsaugoti įgūdžius rašyti ir nepamiršti jau išmoktų taisyklių.\r\n\r\nBūtent tokiam tikslui ir sukurta ši knygelė. Galbūt ne viskas joje idealiai dera su mokymo metodika ar įprastomis pamokomis. Dauguma diktantų parašyti gamtos reiškinių ar pasakų motyvais. Su savimi jie neša ir dalelę gyvenimo pažinimo. Dabar, kai vis įkyriau į vaikų sąmonę beldžiasi mintis, kad raidė atsiranda paspaudus mygtuką, svarbu pamokyti vaikus suraityti aidelę, sudėlioti žodelį.\r\n\r\nSėkmės didžiausios mūsų pradinukams!\r\n\r\nLeidėjai', '2.79', 'https://drive.google.com/uc?id=1l-TnbKkB2ZP2APenFeDSTLavqutQvEDm', '44', 'Liberum Artis', 0, 0, '', '2017', '9786094280146', '14,5 x 20,5 x 0,3 cm, minkšti viršeliai', 'Lietuvių', 'Turime sandėlyje', 0),
(10, 'Pasaulio pažinimo atlasas pradinukams', 'Vadovėlis. Pradinis ugdymas', 48, 'Šį atlasą, parengtą pagal Pradinio ugdymo programą, siūlome naudoti 1-4 kl. per pasaulio pažinimo pamokas.\r\n\r\nTai pradinių klasių mokiniams pritaikytų geografijos ir istorijos žemėlapių rinkinys, papildytas gražiomis iliustracijomis, įdomiais tekstais ir užduotimis.', '14.29', 'https://drive.google.com/uc?id=1Uz0UAz6rQZjjNzXdToTxJKN-vxA13894', '4', 'Briedis', 0, 0, 'Iliustravo Lina Žutautienė, Rubenas Atojanas', '2016', '9789955265399', '21,9 x 29 cm, kieti viršeliai', 'Lietuvių', 'Turime sandėlyje', 0);

-- --------------------------------------------------------

--
-- Table structure for table `book_rating`
--

CREATE TABLE `book_rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL,
  `rating` float NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_rating`
--

INSERT INTO `book_rating` (`id`, `user_id`, `book_id`, `createdAt`, `updatedAt`, `rating`, `comment`) VALUES
(1, 1, 1, '2023-04-29', '2023-04-29', 4, 'Geros pratybos, padėjo ruoštis egzaminam');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `bookTitle` varchar(255) NOT NULL,
  `bookImage` varchar(255) NOT NULL,
  `bookAuthor` varchar(1000) NOT NULL,
  `bookPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_number` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `cart` varchar(10000) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street_number` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_number`, `date`, `status`, `cart`, `street`, `street_number`, `city`, `payment`) VALUES
(1, 2, '#lhbaxl', '2023-05-07', 'Ruošiama', '[{\"ISBN\":\"9786094421327\",\"author\":\"Rytas Šalna, Mantas Šiumeta, Robertas Šalna\",\"available_quantity\":\"22\",\"description\":\"Gamtinė geografija“ ir „Visuomeninė geografija“ yra geografijos baigiamosios mokymosi pakopos vadovėliai. Jie įrėmina pagrindinėje mokykloje įgytas geografijos žinias ir artina mokinį prie geografijos egzamino. Mokytojų patirtis rodo, kad nemažai jų vyresnėse klasėse geografijos mokymą tiesiogiai sieja su pasirengimu geografijos egzaminui.\r\nAntrojoje vadovėlį papildančioje mokymo priemonėje pateikiama daug su geografiniais gebėjimais susijusių užduočių. Jos atitinka visas svarbiausias gamtinės geografijos ugdymo turinio sritis. Pateikiamos topografinio vardyno, rašytinių šaltinių analizės, darbo su žemėlapiais, informacijos paieškos internete, schemų sudarymo ir pildymo bei kitos užduotys.\r\nPratybų sąsiuviniai nuosekliai ir kryptingai padės prisiminti ir įtvirtinti svarbiausią mokomąją medžiagą, gebėjimus bei sėkmingai pasiruošti geografijos brandos egzaminui.\",\"format\":\"19 x 27 cm, minkšti viršeliai\",\"id\":\"2\",\"image\":\"https://drive.google.com/uc?id=1I12xk2Fbuy1VGBih8vMEWhhsl0VsuNOb\",\"language\":\"Lietuvių\",\"number_of_ratings\":\"0\",\"pages\":\"40\",\"price\":\"4.99\",\"publisher\":\"Didakta\",\"quantity\":\"5\",\"rating\":\"0\",\"subTotal\":24.95,\"title\":\"Gaublys. Gamtinė geografija. Pratybų sąsiuvinis 11-12 klasei (II dalis)\",\"year\":\"2019\"}]', 'Parko g.', '32', 'Vilnius', 'Paypal'),
(2, 2, '#729bbt', '2023-05-09', 'Ruošiama', '[{\"ISBN\":\"9789955285267\",\"author\":\"N. Astrauskienė, R.A. Bendorius, A. Bogdanovičius\",\"available_quantity\":\"13\",\"description\":\"Leidinys skirtas VGTU visų specialybių studentams, studijuojantiems fizinių mokslų srities, fizikos 02P krypties bendrosios fizikos dalies mechanikos ir termodinamikos kursus. Nagrinėjamos fizinių dydžių paklaidos, sukamojo judėjimo, svyravimų ir bangų sklidimo dėsningumai, molekulinės fizikos bei termodinamikos dėsniai. Laboratoriniai darbai sugrupuoti pagal tematikas nurodant skyrius, kuriuose supažindinama su nagrinėjamų fizinių reiškinių pobūdžiu. Aprašyti laboratorinių darbų tikslai, priemonės, darbo atlikimo metodikos, nurodytos pagrindinės rezultatų skaičiavimų formulės. Darbo aprašų pabaigoje pateikti kontroliniai klausimai ir nagrinėtai temai skirtas literatūros sąrašas.\",\"format\":\"14,5 x 20,5 x 1,3 cm, minkšti viršeliai\",\"id\":\"1\",\"image\":\"https://drive.google.com/uc?id=1TVSzoOq1vZPm2sReOdrbYCWyBg15wBlF\",\"language\":\"lietuvių\",\"number_of_ratings\":\"1\",\"pages\":\"212\",\"price\":\"7.25\",\"publisher\":\"Technika\",\"quantity\":\"2\",\"rating\":\"4\",\"subTotal\":14.5,\"title\":\"Mechanika ir termodinamika\",\"year\":\"2009\"},{\"ISBN\":\"9786094421327\",\"author\":\"Rytas Šalna, Mantas Šiumeta, Robertas Šalna\",\"available_quantity\":\"22\",\"description\":\"Gamtinė geografija“ ir „Visuomeninė geografija“ yra geografijos baigiamosios mokymosi pakopos vadovėliai. Jie įrėmina pagrindinėje mokykloje įgytas geografijos žinias ir artina mokinį prie geografijos egzamino. Mokytojų patirtis rodo, kad nemažai jų vyresnėse klasėse geografijos mokymą tiesiogiai sieja su pasirengimu geografijos egzaminui.\r\nAntrojoje vadovėlį papildančioje mokymo priemonėje pateikiama daug su geografiniais gebėjimais susijusių užduočių. Jos atitinka visas svarbiausias gamtinės geografijos ugdymo turinio sritis. Pateikiamos topografinio vardyno, rašytinių šaltinių analizės, darbo su žemėlapiais, informacijos paieškos internete, schemų sudarymo ir pildymo bei kitos užduotys.\r\nPratybų sąsiuviniai nuosekliai ir kryptingai padės prisiminti ir įtvirtinti svarbiausią mokomąją medžiagą, gebėjimus bei sėkmingai pasiruošti geografijos brandos egzaminui.\",\"format\":\"19 x 27 cm, minkšti viršeliai\",\"id\":\"2\",\"image\":\"https://drive.google.com/uc?id=1I12xk2Fbuy1VGBih8vMEWhhsl0VsuNOb\",\"language\":\"Lietuvių\",\"number_of_ratings\":\"0\",\"pages\":\"40\",\"price\":\"4.99\",\"publisher\":\"Didakta\",\"quantity\":\"1\",\"rating\":\"0\",\"subTotal\":4.99,\"title\":\"Gaublys. Gamtinė geografija. Pratybų sąsiuvinis 11-12 klasei (II dalis)\",\"year\":\"2019\"}]', 'Parko g.', '32', 'Vilnius', 'Paypal'),
(3, 2, '#rr1xwy', '2023-05-10', 'Ruošiama', '[{\"ISBN\":\"9789955285267\",\"author\":\"N. Astrauskienė, R.A. Bendorius, A. Bogdanovičius\",\"available_quantity\":\"13\",\"description\":\"Leidinys skirtas VGTU visų specialybių studentams, studijuojantiems fizinių mokslų srities, fizikos 02P krypties bendrosios fizikos dalies mechanikos ir termodinamikos kursus. Nagrinėjamos fizinių dydžių paklaidos, sukamojo judėjimo, svyravimų ir bangų sklidimo dėsningumai, molekulinės fizikos bei termodinamikos dėsniai. Laboratoriniai darbai sugrupuoti pagal tematikas nurodant skyrius, kuriuose supažindinama su nagrinėjamų fizinių reiškinių pobūdžiu. Aprašyti laboratorinių darbų tikslai, priemonės, darbo atlikimo metodikos, nurodytos pagrindinės rezultatų skaičiavimų formulės. Darbo aprašų pabaigoje pateikti kontroliniai klausimai ir nagrinėtai temai skirtas literatūros sąrašas.\",\"format\":\"14,5 x 20,5 x 1,3 cm, minkšti viršeliai\",\"id\":\"1\",\"image\":\"https://drive.google.com/uc?id=1TVSzoOq1vZPm2sReOdrbYCWyBg15wBlF\",\"language\":\"lietuvių\",\"number_of_ratings\":\"2\",\"pages\":\"212\",\"price\":\"7.25\",\"publisher\":\"Technika\",\"quantity\":\"9\",\"rating\":\"4.5\",\"subTotal\":65.25,\"title\":\"Mechanika ir termodinamika\",\"year\":\"2009\"}]', 'Parko g.', '35', 'Vilnius', 'Paypal'),
(5, 2, '#a5b821', '2023-05-10', 'Ruošiama', '[{\"ISBN\":\"9789955285267\",\"author\":\"N. Astrauskienė, R.A. Bendorius, A. Bogdanovičius\",\"available_quantity\":\"13\",\"description\":\"Leidinys skirtas VGTU visų specialybių studentams, studijuojantiems fizinių mokslų srities, fizikos 02P krypties bendrosios fizikos dalies mechanikos ir termodinamikos kursus. Nagrinėjamos fizinių dydžių paklaidos, sukamojo judėjimo, svyravimų ir bangų sklidimo dėsningumai, molekulinės fizikos bei termodinamikos dėsniai. Laboratoriniai darbai sugrupuoti pagal tematikas nurodant skyrius, kuriuose supažindinama su nagrinėjamų fizinių reiškinių pobūdžiu. Aprašyti laboratorinių darbų tikslai, priemonės, darbo atlikimo metodikos, nurodytos pagrindinės rezultatų skaičiavimų formulės. Darbo aprašų pabaigoje pateikti kontroliniai klausimai ir nagrinėtai temai skirtas literatūros sąrašas.\",\"format\":\"14,5 x 20,5 x 1,3 cm, minkšti viršeliai\",\"id\":\"1\",\"image\":\"https://drive.google.com/uc?id=1TVSzoOq1vZPm2sReOdrbYCWyBg15wBlF\",\"language\":\"lietuvių\",\"number_of_ratings\":\"2\",\"pages\":\"212\",\"price\":\"7.25\",\"publisher\":\"Technika\",\"quantity\":\"1\",\"rating\":\"4.5\",\"subTotal\":7.25,\"title\":\"Mechanika ir termodinamika\",\"year\":\"2009\"}]', 'Parko g.', '35', 'Vilnius', 'Paypal'),
(6, 2, '#orcv8j', '2023-05-10', 'Ruošiama', '[{\"ISBN\":\"9789955285267\",\"author\":\"N. Astrauskienė, R.A. Bendorius, A. Bogdanovičius\",\"available_quantity\":\"13\",\"description\":\"Leidinys skirtas VGTU visų specialybių studentams, studijuojantiems fizinių mokslų srities, fizikos 02P krypties bendrosios fizikos dalies mechanikos ir termodinamikos kursus. Nagrinėjamos fizinių dydžių paklaidos, sukamojo judėjimo, svyravimų ir bangų sklidimo dėsningumai, molekulinės fizikos bei termodinamikos dėsniai. Laboratoriniai darbai sugrupuoti pagal tematikas nurodant skyrius, kuriuose supažindinama su nagrinėjamų fizinių reiškinių pobūdžiu. Aprašyti laboratorinių darbų tikslai, priemonės, darbo atlikimo metodikos, nurodytos pagrindinės rezultatų skaičiavimų formulės. Darbo aprašų pabaigoje pateikti kontroliniai klausimai ir nagrinėtai temai skirtas literatūros sąrašas.\",\"format\":\"14,5 x 20,5 x 1,3 cm, minkšti viršeliai\",\"id\":\"1\",\"image\":\"https://drive.google.com/uc?id=1TVSzoOq1vZPm2sReOdrbYCWyBg15wBlF\",\"language\":\"lietuvių\",\"number_of_ratings\":\"1\",\"pages\":\"212\",\"price\":\"7.25\",\"publisher\":\"Technika\",\"quantity\":\"7\",\"rating\":\"4\",\"subTotal\":50.75,\"title\":\"Mechanika ir termodinamika\",\"year\":\"2009\"}]', 'Parko g.', '38', 'Vilnius', 'Paypal'),
(7, 2, '#n3rszq', '2023-05-10', 'Ruošiama', '[{\"ISBN\":\"9786094421327\",\"author\":\"Rytas Šalna, Mantas Šiumeta, Robertas Šalna\",\"available_quantity\":\"22\",\"description\":\"Gamtinė geografija“ ir „Visuomeninė geografija“ yra geografijos baigiamosios mokymosi pakopos vadovėliai. Jie įrėmina pagrindinėje mokykloje įgytas geografijos žinias ir artina mokinį prie geografijos egzamino. Mokytojų patirtis rodo, kad nemažai jų vyresnėse klasėse geografijos mokymą tiesiogiai sieja su pasirengimu geografijos egzaminui.\r\nAntrojoje vadovėlį papildančioje mokymo priemonėje pateikiama daug su geografiniais gebėjimais susijusių užduočių. Jos atitinka visas svarbiausias gamtinės geografijos ugdymo turinio sritis. Pateikiamos topografinio vardyno, rašytinių šaltinių analizės, darbo su žemėlapiais, informacijos paieškos internete, schemų sudarymo ir pildymo bei kitos užduotys.\r\nPratybų sąsiuviniai nuosekliai ir kryptingai padės prisiminti ir įtvirtinti svarbiausią mokomąją medžiagą, gebėjimus bei sėkmingai pasiruošti geografijos brandos egzaminui.\",\"format\":\"19 x 27 cm, minkšti viršeliai\",\"id\":\"2\",\"image\":\"https://drive.google.com/uc?id=1I12xk2Fbuy1VGBih8vMEWhhsl0VsuNOb\",\"language\":\"Lietuvių\",\"number_of_ratings\":\"0\",\"pages\":\"40\",\"price\":\"4.99\",\"publisher\":\"Didakta\",\"quantity\":\"4\",\"rating\":\"0\",\"subTotal\":19.96,\"title\":\"Gaublys. Gamtinė geografija. Pratybų sąsiuvinis 11-12 klasei (II dalis)\",\"year\":\"2019\"}]', 'Parko g.', '35', 'Vilnius', 'Paypal');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `surname`, `password`) VALUES
(1, 'admin@admin.com', 'Admin', 'Admin', '$2y$10$vw5rHJTnth9Z7MGv8EYfGu7XwxtQKgp8E3jT3z4nxJ35A.gntoUBe'),
(2, 'testas1@gmail.com', 'Testas', 'Test', '$2y$10$SmtvBowUOA41JODZgZItF.aPRj.QgqoHhB3BqiyVKBf2cKOm063Am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_rating`
--
ALTER TABLE `book_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_rating`
--
ALTER TABLE `book_rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

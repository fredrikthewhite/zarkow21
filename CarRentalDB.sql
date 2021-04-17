create schema CarRental;
use CarRental;

create table Kund(
KundNr int primary key NOT NULL,
fornamn varchar(50),
efternamn varchar(50) NOT NULL,
nummerID int NOT NULL,
telefonnummer1 int NOT NULL,
telefonnummer2 int,
mail varchar(50) NOT NULL,
adress varchar(50) NOT NULL,
postnummer varchar(50) NOT NULL,
ort int(5) NOT NULL,
kontaktperson varchar(50) NOT NULL
);

create table CarRental.Uthyrningspersonal(
personNr int(12) primary key NOT NULL
);

create table CarRental.Bokning(
bokningNr int primary key NOT NULL,
bokningstid timestamp NOT NULL,
bokningstyp varchar(50) NOT NULL,
utlamningstid timestamp NOT NULL,
inlamningstid timestamp NOT NULL,
modell varchar(50) NOT NULL,
kundNr int,
personNr int(12)
);
-- foreign key (KundNr) references Kund(KundNr)
-- constraint personNr foreign key (personNr) references uthyrningspersonal(personNr)

create table CarRental.Uthyrning(
uthyrningsNr int primary key NOT NULL,
startTid timestamp NOT NULL,
avslutningsTid timestamp NOT NULL,
bokningsNr int,
regNr varchar(10)
);
-- constraint bokningsNr foreign key (bokningsNr) references Bokning(bokningsNr),
-- constraint regNr foreign key (regNr) references Bil(regNr)

create table CarRental.UthyrningsStation(
stationsNr int primary key NOT NULL
);

create table CarRental.Bil(
regNr varchar(10) primary key NOT NULL,
stationsNr int,
årsmodell int(4) NOT NULL,
märke varchar(50) NOT NULL,
modell varchar(50) NOT NULL,
inköpsår varchar(50) NOT NULL,
tillgängligStatus Boolean NOT NULL,
bokningStatus Boolean NOT NULL,
körsträcka float NOT NULL
);
-- constraint stationsNr foreign key (stationsNr) references UthyrningsStation(stationsNr),

create table CarRental.Bilkontroll(
kontrolNr int primary key NOT NULL,
regNr int,
personNr int(12),
korsträcka int NOT NULL,
tidpunkt timestamp NOT NULL,
godkänd boolean NOT NULL,
kommentar varchar(1000)
);
-- constraint regNr foreign key (regNr) references Bil(regNr),
-- constraint personNr foreign key (personNr) references underhållspersonal(personNr),

create table CarRental.Underhållspersonal(
personNr int(12) primary key NOT NULL
);

create table CarRental.Personal(
personNr int(12) primary key NOT NULL,
fornamn varchar(50) NOT NULL,
efternamn varchar(50) NOT NULL,
adress varchar(50) NOT NULL,
postnummer int(5) NOT NULL,
ort varchar(50) NOT NULL,
telefon int NOT NULL,
anstTyp varchar(50) NOT NULL,
anstDatum timestamp NOT NULL,
position varchar(50) NOT NULL
);
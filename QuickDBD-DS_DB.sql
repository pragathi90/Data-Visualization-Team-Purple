-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "ds_tbl" (
    "pos_id" serial,
	"position" varchar(250),
    "company" varchar(400),
    "description" varchar(30000),
    "city" varchar(200),
    "state" varchar(5),
    "zip" varchar(10),
    CONSTRAINT "pk_ds_tbl" PRIMARY KEY (
        "pos_id"
     )
);

CREATE TABLE "skills_tbl" (
    "sk_id" serial,
	"skill" varchar(250),
    "pos_id" int,
    CONSTRAINT "pk_skills_tbl" PRIMARY KEY (
        "sk_id"
     )
);

CREATE TABLE "geo_ref_tbl" (
    "name" varchar(100),
    "description" varchar(300),
    "value_line" varchar(400),
    "fld_type" varchar(12)
);

create table "geo_population_tbl" (
    "statefips" int,
    "state" varchar(5),
    "zipcode" varchar(12),
    "agi_stub" int,
    "n1" int,
    "mars1" int,
    "mars2" int,
    "mars4" int,
    "prep" int,
    "n2" int,
    "numdep" int,
    "total_vita" int,
    "vita" int,
    "tce" int,
	"a00100" int,
	"n02650" int,
	"a02650" int,
	"n00200" int,
	"a00200" int,
	"n00300" int,
	"a00300" int,
	"n00600" int,
	"a00600" int,
	"n00650" int,
	"a00650" int,
	"n00700" int,
	"a00700" int,
	"n00900" int,
	"a00900" int,
	"n01000" int,
	"a01000" int,
	"n01400" int,
	"a01400" int,
	"n01700" int,
	"a01700" int,
	"schf" int,
	"n02300" int,
	"a02300" int,
	"n02500" int,
	"a02500" int,
	"n26270" int,
	"a26270" int,
	"n02900" int,
	"a02900" int,
	"n03220" int,
	"a03220" int,
	"n03300" int,
	"a03300" int,
	"n03270" int,
	"a03270" int,
	"n03150" int,
	"a03150" int,
	"n03210" int,
	"a03210" int,
	"n03230" int,
	"a03230" int,
	"n03240" int,
	"a03240" int,
	"n04470" int,
	"a04470" int,
	"a00101" int,
	"n18425" int,
	"a18425" int,
	"n18450" int,
	"a18450" int,
	"n18500" int,
	"a18500" int,
	"n18300" int,
	"a18300" int,
	"n19300" int,
	"a19300" int,
	"n19700" int,
	"a19700" int,
	"n04800" int,
	"a04800" int,
	"n05800" int,
	"a05800" int,
	"n09600" int,
	"a09600" int,
	"n05780" int,
	"a05780" int,
	"n07100" int,
	"a07100" int,
	"n07300" int,
	"a07300" int,
	"n07180" int,
	"a07180" int,
	"n07230" int,
	"a07230" int,
	"n07240" int,
	"a07240" int,
	"n07220" int,
	"a07220" int,
	"n07260" int,
	"a07260" int,
	"n09400" int,
	"a09400" int,
	"n85770" int,
	"a85770" int,
	"n85775" int,
	"a85775" int,
	"n09750" int,
	"a09750" int,
	"n10600" int,
	"a10600" int,
	"n59660" int,
	"a59660" int,
	"n59720" int,
	"a59720" int,
	"n11070" int,
	"a11070" int,
	"n10960" int,
	"a10960" int,
	"n11560" int,
	"a11560" int,
	"n06500" int,
	"a06500" int,
	"n10300" int,
	"a10300" int,
	"n85530" int,
	"a85530" int,
	"n85300" int,
	"a85300" int,
	"n11901" int,
	"a11901" int,
	"n11902" int,
	"a11902" int
    
);

-- Table lookup for zipcodes and locations
CREATE TABLE "zip_location" (
    "Rec_id" int,
    "Zipcode" varchar(5),
    "ZipCodeType" varchar(12),
    "City" varchar(255),
    "State_abbr" varchar(50),
    "LocationType" varchar(50),
    "Lat" decimal,
    "Long" decimal,
    "Xaxis" decimal,
    "Yaxis" decimal,
    "Zaxis" decimal,
    "WorldRegion" varchar(2),
    "Country" varchar(2),
    "LocationText" varchar(400),
    "Location" varchar(500),
    "Decommisioned" varchar(6),
    "TaxReturnsFiled" int,
    "EstimatedPopulation" bigint,
    "TotalWages" bigint,
    "Notes" varchar(500)
);

CREATE INDEX "idx_ds_tbl_company"
ON "ds_tbl" ("company");

CREATE INDEX "idx_geo_Ref_tbl_name"
ON "geo_ref_tbl" ("name");


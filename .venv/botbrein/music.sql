BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "music" (
	"ID"	INTEGER NOT NULL UNIQUE,
	"File_ID"	TEXT NOT NULL,
	"right_answer"	TEXT NOT NULL,
	"wrong_answer"	TEXT NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
INSERT INTO "music" VALUES (1,'AwACAgIAAxkDAAM5Xw2f9jproLfjdGgUT2Ss9jP2AS0AAkAGAALXjHBI9uaADYwTf0IaBA','Hugo - 99 problems','None - None');
INSERT INTO "music" VALUES (2,'AwACAgIAAxkDAAM7Xw2f-lFMLJcznUT0s5SyJJ5ObZUAAkEGAALXjHBIO0sNq1cAAUUlGgQ','Skillet - Feel invencible','None - None');
INSERT INTO "music" VALUES (3,'AwACAgIAAxkDAAM9Xw2f_vUmfcW9lFUSkPHnBga1hBQAAkMGAALXjHBIs8I9PyDSir4aBA','Gavin DeGraw - Fire','None - None');
INSERT INTO "music" VALUES (4,'AwACAgIAAxkDAAM_Xw2gAinTUd_Axn59b5nlsS13kWIAAkQGAALXjHBI6bFGD4XYPHgaBA','Imagine Dragons - Friction','None - None');
INSERT INTO "music" VALUES (5,'AwACAgIAAxkDAANBXw2gB0oWp-bKqPLCQkScnRmsv0YAAkUGAALXjHBIMHek0YQKU9kaBA','Royal Tailor - Got That Fire','None - None');
INSERT INTO "music" VALUES (6,'AwACAgIAAxkDAANDXw2gC-1geDl_kkUTDaz-eAABR9qEAAJGBgAC14xwSGyVowsWK_tyGgQ','Linkin Park - In the end','None - None');
INSERT INTO "music" VALUES (7,'AwACAgIAAxkDAANFXw2gD7Fj97PGvH4cDWWeh_vm3gADRwYAAteMcEjiNdXli008QxoE','Sub Urban - Isolate','None - None');
INSERT INTO "music" VALUES (8,'AwACAgIAAxkDAANHXw2gEzQzeC-DelJtutf-C_S7rawAAkgGAALXjHBIW3ihr1J1lqcaBA','Koe No Katachi - Rise','None - None');
INSERT INTO "music" VALUES (9,'AwACAgIAAxkDAANJXw2gF2NKOx4kuL9Gcf0BNQZAn94AAkkGAALXjHBIIWns77cr8zAaBA','Omri - Save me','None - None');
INSERT INTO "music" VALUES (10,'AwACAgIAAxkDAANLXw2gG3JXqN1OBLKOrRIPLGrTAAEvAAJKBgAC14xwSD1uLuiDkbuGGgQ','The Neighborhood - Wires','None - None');
INSERT INTO "music" VALUES (11,'AwACAgIAAxkDAANNXw2gIDDPJXVe9e7wBa54p7D4Yk4AAksGAALXjHBIRgABcbWjOq_NGgQ','Aikko - нечего сказать','None - None');
COMMIT;

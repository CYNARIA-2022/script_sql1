SET SEARCH_PATH = "I_OPE";

--DROP INDEX IF EXISTS "IDX_LB_TYPE_CLIENT"; 
CREATE INDEX "IDX_LB_TYPE_CLIENT" 
ON "TB_TYPE_CLIENT" USING BTREE ("LB_TYPE_CLIENT");

--DROP INDEX IF EXISTS "IDX_NOM_PREN_CLIENT" ;
CREATE UNIQUE INDEX "IDX_NOM_PREN_CLIENT" 
ON "TB_CLIENT" USING BTREE ("NOM_CLIENT", "PREN_CLIENT");

--DROP INDEX IF EXISTS "IDX_CD_POSTAL_CLIENT" ;
CREATE INDEX "IDX_CD_POSTAL_CLIENT" 
ON "TB_CLIENT" USING BTREE ("CD_POSTAL_CLIENT");

--DROP INDEX IF EXISTS "IDX_VILLE_CLIENT" ;
CREATE INDEX "IDX_VILLE_CLIENT" 
ON "TB_CLIENT" USING BTREE ("VILLE_CLIENT");

--DROP INDEX IF EXISTS "IDX_PAYS_CLIENT" ;
CREATE INDEX "IDX_PAYS_CLIENT" 
ON "TB_CLIENT" USING BTREE ("PAYS_CLIENT");

--DROP INDEX IF EXISTS "IDX_REGION_CLIENT" ;
CREATE INDEX "IDX_REGION_CLIENT" 
ON "TB_CLIENT" USING BTREE ("REGION_CLIENT");

--DROP INDEX IF EXISTS "IDX_CD_TYPE_CLIENT" ;
CREATE INDEX "IDX_CD_TYPE_CLIENT" 
ON "TB_CLIENT" USING BTREE ("CD_TYPE_CLIENT");

--DROP INDEX IF EXISTS "IDX_LB_CATEGORIE" ;
CREATE INDEX "IDX_LB_CATEGORIE" 
ON "TB_CATEGORIE" USING BTREE ("LB_CATEGORIE");

--DROP INDEX IF EXISTS "IDX_LB_SOUS_CATEGORIE" ;
CREATE INDEX "IDX_LB_SOUS_CATEGORIE" 
ON "TB_SOUS_CATEGORIE" USING BTREE ("LB_SOUS_CATEGORIE");

--DROP INDEX IF EXISTS "IDX_CD_CATEGORIE" ;
CREATE INDEX "IDX_CD_CATEGORIE" 
ON "TB_SOUS_CATEGORIE" USING BTREE ("CD_CATEGORIE");

--DROP INDEX IF EXISTS "IDX_NOM_PRODUIT" ;
CREATE INDEX "IDX_NOM_PRODUIT" 
ON "TB_PRODUIT" USING BTREE ("NOM_PRODUIT");

--DROP INDEX IF EXISTS "IDX_PRIX_ACHAT_PRODUIT" ;
CREATE INDEX "IDX_PRIX_ACHAT_PRODUIT" 
ON "TB_PRODUIT" USING BTREE ("PRIX_ACHAT_PRODUIT");

--DROP INDEX IF EXISTS "IDX_PRIX_VENTE_PRODUIT" ;
CREATE INDEX "IDX_PRIX_VENTE_PRODUIT" 
ON "TB_PRODUIT" USING BTREE ("PRIX_VENTE_PRODUIT");

--DROP INDEX IF EXISTS "IDX_SOUS_CATEGORIE" ;
CREATE INDEX "IDX_CD_SOUS_CATEGORIE" 
ON "TB_PRODUIT" USING BTREE ("CD_SOUS_CATEGORIE");

--DROP INDEX IF EXISTS "IDX_ID_CLIENT" ;
CREATE INDEX "IDX_DT_VENTE" 
ON "TB_VENTE" USING BTREE ("DT_VENTE");

--DROP INDEX IF EXISTS "IDX_DT_VENTE" ;
CREATE INDEX "IDX_ID_CLIENT" 
ON "TB_VENTE" USING BTREE ("ID_CLIENT");

--DROP INDEX IF EXISTS "IDX_QTE_VENTE" ;
CREATE INDEX "IDX_QTE_VENTE" 
ON "TB_DETAIL_VENTE" USING BTREE ("QTE_VENTE");

--DROP INDEX IF EXISTS "IDX_PRIX_VENTE" ;
CREATE INDEX "IDX_PRIX_VENTE" 
ON "TB_DETAIL_VENTE" USING BTREE ("PRIX_VENTE");

--DROP INDEX IF EXISTS "IDX_PRIX_ACHAT" ;
CREATE INDEX "IDX_PRIX_ACHAT" 
ON "TB_DETAIL_VENTE" USING BTREE ("PRIX_ACHAT");
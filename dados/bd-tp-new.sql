-- Creator:       MySQL Workbench 8.0.18/ExportSQLite Plugin 0.1.0
-- Author:        Arthur
-- Caption:       New Model
-- Project:       Name of the project
-- Changed:       2019-11-10 21:50
-- Created:       2019-11-10 19:07
PRAGMA foreign_keys = OFF;

-- Schema: tp-ibd
ATTACH "tp-ibd.sdb" AS "tp-ibd";
BEGIN;
CREATE TABLE "tp-ibd"."TipoLaboratorio"(
  "idTipoLaboratorio" INTEGER PRIMARY KEY NOT NULL,
  "nomeTipoLaboratorio" VARCHAR(200) NOT NULL
);
INSERT INTO "TipoLaboratorio"("idTipoLaboratorio","nomeTipoLaboratorio") VALUES(1, 'LABORATORIO_CIENCIAS');
INSERT INTO "TipoLaboratorio"("idTipoLaboratorio","nomeTipoLaboratorio") VALUES(2, 'LABORATORIO_INFORMATICA');
CREATE TABLE "tp-ibd"."TipoSala"(
  "idTipoSala" INTEGER PRIMARY KEY NOT NULL,
  "nomeTipoSala" VARCHAR(200) NOT NULL
);
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(1, 'SALA_DIRETORIA');
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(2, 'SECRETARIA');
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(3, 'REFEITORIO');
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(4, 'SALA_PROFESSOR');
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(5, 'DESPENSA');
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(6, 'ALMOXARIFADO');
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(7, 'AUDITORIO');
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(8, 'BIBLIOTECA');
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(9, 'BERCARIO');
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(10, 'COZINHA');
INSERT INTO "TipoSala"("idTipoSala","nomeTipoSala") VALUES(11, 'SALA_LEITURA');
CREATE TABLE "tp-ibd"."TipoQuadra"(
  "idTipoQuadra" INTEGER PRIMARY KEY NOT NULL,
  "nomeTipoQuadra" VARCHAR(500) NOT NULL
);
INSERT INTO "TipoQuadra"("idTipoQuadra","nomeTipoQuadra") VALUES(1, 'QUADRA_ESPORTES_COBERTA');
INSERT INTO "TipoQuadra"("idTipoQuadra","nomeTipoQuadra") VALUES(2, 'QUADRA_ESPORTES_DESCOBERTA');
INSERT INTO "TipoQuadra"("idTipoQuadra","nomeTipoQuadra") VALUES(3, 'PATIO_COBERTO');
INSERT INTO "TipoQuadra"("idTipoQuadra","nomeTipoQuadra") VALUES(4, 'PATIO_DESCOBERTO');
INSERT INTO "TipoQuadra"("idTipoQuadra","nomeTipoQuadra") VALUES(5, 'PARQUE_INFANTIL');
CREATE TABLE "tp-ibd"."TipoEscola"(
  "idTipoEscola" INTEGER PRIMARY KEY NOT NULL
);
CREATE TABLE "tp-ibd"."Endereco"(
  "idEndereco" INTEGER PRIMARY KEY NOT NULL,
  "localizacao" VARCHAR(500) NOT NULL,
  "regiao" VARCHAR(500) NOT NULL,
  "UF" VARCHAR(45) NOT NULL,
  "municipio" VARCHAR(500) NOT NULL,
  "codMunicipio" INTEGER NOT NULL,
  "endereco" VARCHAR(500) NOT NULL,
  "bairro" VARCHAR(500) NOT NULL,
  "numero" VARCHAR(45) NOT NULL,
  "complemento" VARCHAR(500) NOT NULL,
  "cep" VARCHAR(45) NOT NULL
);
CREATE TABLE "tp-ibd"."TipoSanitario"(
  "idTipoSanitario" INTEGER PRIMARY KEY NOT NULL,
  "nomeTipoSanitario" VARCHAR(500) NOT NULL
);
INSERT INTO "TipoSanitario"("idTipoSanitario","nomeTipoSanitario") VALUES(1, 'SANITARIO_DENTRO_PREDIO');
INSERT INTO "TipoSanitario"("idTipoSanitario","nomeTipoSanitario") VALUES(2, 'SANITARIO_FORA_PREDIO');
INSERT INTO "TipoSanitario"("idTipoSanitario","nomeTipoSanitario") VALUES(3, 'SANITARIO_EI');
INSERT INTO "TipoSanitario"("idTipoSanitario","nomeTipoSanitario") VALUES(4, 'BANHEIRO_CHUVEIRO');
CREATE TABLE "tp-ibd"."TipoMidia"(
  "idTipoMidia" INTEGER PRIMARY KEY NOT NULL,
  "nomeMidia" VARCHAR(45)
);
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(1, 'EQUIP_DVD');
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(2, 'EQUIP_IMPRESSORA');
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(3, 'EQUIP_SOM');
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(4, 'EQUIP_MULTIMIDIA');
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(5, 'EQUIP_FAX');
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(6, 'EQUIP_FOTO');
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(7, 'EQUIP_PARABOLICA');
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(8, 'EQUIP_COPIADORA');
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(9, 'EQUIP_RETRO');
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(10, 'EQUIP_TV');
INSERT INTO "TipoMidia"("idTipoMidia","nomeMidia") VALUES(11, 'EQUIP_VIDEOCASSETE');
CREATE TABLE "tp-ibd"."Escola"(
  "PK_COD_ENTIDADE" INTEGER,
  "Endereco_idEndereco" INTEGER,
  "TipoEscola_idTipoEscola" INTEGER,
  "Nome_Escola" VARCHAR(500),
  "REDE" VARCHAR(500),
  "ID_DEPENDENCIA_ADM" VARCHAR(500),
  "Dependencia_Administrativa" VARCHAR(500),
  "CATESCPRIVADA" VARCHAR(500),
  "Correio_Eletronico" VARCHAR(500),
  "Situacao_Funcionamento" VARCHAR(500),
  "MANT_EMP" VARCHAR(500),
  "MANT_SIND" VARCHAR(500),
  "MANT_SIST_S" VARCHAR(500),
  "MANT_ONG" VARCHAR(500),
  "MOD_ATIV_COMPLEMENTAR" VARCHAR(500),
  "ORGCICLOS" VARCHAR(500),
  "FUNC_PREDIO_ESCOLAR" VARCHAR(500),
  "FUNC_SALAS_EMPRESA" VARCHAR(500),
  "FUNC_PRISIONAL" VARCHAR(500),
  "FUNC_TEMPLO_IGREJA" VARCHAR(500),
  "FUNC_CASA_PROFESSOR" VARCHAR(500),
  "FUNC_GALPAO" VARCHAR(500),
  "FUNC_OUTROS" VARCHAR(500),
  "FUNC_SALAS_OUTRA_ESC" VARCHAR(500),
  "NUM_CNPJ_ESCOLA_PRIVADA" VARCHAR(500),
  "NUM_CNPJ_UNIDADE_EXECUTORA" VARCHAR(500),
  "DOCUMENTO_REGULAMENTACAO" VARCHAR(500),
  "CONVENIADA_PP" VARCHAR(500),
  "TIPO_CONVENIO_PODER_PUBLICO" VARCHAR(500),
  "LOCDIFERENCIADA" VARCHAR(500),
  "ACESSIBILIDADE" VARCHAR(500),
  "DEPENDENCIAS_PNE" VARCHAR(500),
  PRIMARY KEY("PK_COD_ENTIDADE","Endereco_idEndereco","TipoEscola_idTipoEscola"),
  CONSTRAINT "fk_Escola_Endereco1"
    FOREIGN KEY("Endereco_idEndereco")
    REFERENCES "Endereco"("idEndereco"),
  CONSTRAINT "fk_Escola_TipoEscola1"
    FOREIGN KEY("TipoEscola_idTipoEscola")
    REFERENCES "TipoEscola"("idTipoEscola")
);
CREATE INDEX "tp-ibd"."Escola.fk_Escola_Endereco1_idx" ON "Escola" ("Endereco_idEndereco");
CREATE INDEX "tp-ibd"."Escola.fk_Escola_TipoEscola1_idx" ON "Escola" ("TipoEscola_idTipoEscola");
CREATE TABLE "tp-ibd"."Telefone"(
  "idTelefone" INTEGER NOT NULL,
  "ddd" VARCHAR(45) NOT NULL,
  "numero" VARCHAR(45) NOT NULL,
  "Escola_idEscola" INTEGER NOT NULL,
  "Escola_Endereco_idEndereco" INTEGER NOT NULL,
  "Escola_TipoEscola_idTipoEscola" INTEGER NOT NULL,
  PRIMARY KEY("idTelefone","Escola_idEscola","Escola_Endereco_idEndereco","Escola_TipoEscola_idTipoEscola"),
  CONSTRAINT "fk_Telefone_Escola1"
    FOREIGN KEY("Escola_idEscola","Escola_Endereco_idEndereco","Escola_TipoEscola_idTipoEscola")
    REFERENCES "Escola"("PK_COD_ENTIDADE","Endereco_idEndereco","TipoEscola_idTipoEscola")
);
CREATE INDEX "tp-ibd"."Telefone.fk_Telefone_Escola1_idx" ON "Telefone" ("Escola_idEscola","Escola_Endereco_idEndereco","Escola_TipoEscola_idTipoEscola");
CREATE TABLE "tp-ibd"."Aluno"(
  "idAluno" INTEGER NOT NULL,
  "serie" VARCHAR(500) NOT NULL,
  "Escola_idEscola" INTEGER NOT NULL,
  PRIMARY KEY("idAluno","Escola_idEscola"),
  CONSTRAINT "fk_Aluno_Escola1"
    FOREIGN KEY("Escola_idEscola")
    REFERENCES "Escola"("PK_COD_ENTIDADE")
);
CREATE INDEX "tp-ibd"."Aluno.fk_Aluno_Escola1_idx" ON "Aluno" ("Escola_idEscola");
CREATE TABLE "tp-ibd"."Sanitario"(
  "idSanitario" INTEGER NOT NULL,
  "Escola_idEscola" INTEGER NOT NULL,
  "TipoSanitario_idTipoSanitario" INTEGER NOT NULL,
  PRIMARY KEY("idSanitario","Escola_idEscola","TipoSanitario_idTipoSanitario"),
  CONSTRAINT "fk_Sanitario_Escola1"
    FOREIGN KEY("Escola_idEscola")
    REFERENCES "Escola"("PK_COD_ENTIDADE"),
  CONSTRAINT "fk_Sanitario_TipoSanitario1"
    FOREIGN KEY("TipoSanitario_idTipoSanitario")
    REFERENCES "TipoSanitario"("idTipoSanitario")
);
CREATE INDEX "tp-ibd"."Sanitario.fk_Sanitario_TipoSanitario1_idx" ON "Sanitario" ("TipoSanitario_idTipoSanitario");
CREATE TABLE "tp-ibd"."Quadra"(
  "idQuadra" INTEGER NOT NULL,
  "Escola_idEscola" INTEGER NOT NULL,
  "TipoQuadra_idTipoQuadra" INTEGER NOT NULL,
  PRIMARY KEY("idQuadra","Escola_idEscola","TipoQuadra_idTipoQuadra"),
  CONSTRAINT "fk_Quadra_Escola1"
    FOREIGN KEY("Escola_idEscola")
    REFERENCES "Escola"("PK_COD_ENTIDADE"),
  CONSTRAINT "fk_Quadra_TipoQuadra1"
    FOREIGN KEY("TipoQuadra_idTipoQuadra")
    REFERENCES "TipoQuadra"("idTipoQuadra")
);
CREATE INDEX "tp-ibd"."Quadra.fk_Quadra_Escola1_idx" ON "Quadra" ("Escola_idEscola");
CREATE INDEX "tp-ibd"."Quadra.fk_Quadra_TipoQuadra1_idx" ON "Quadra" ("TipoQuadra_idTipoQuadra");
CREATE TABLE "tp-ibd"."Sala"(
  "idSala" INTEGER NOT NULL,
  "Escola_idEscola" INTEGER NOT NULL,
  "TipoSala_idTipoSala" INTEGER NOT NULL,
  PRIMARY KEY("idSala","Escola_idEscola","TipoSala_idTipoSala"),
  CONSTRAINT "fk_Sala_Escola1"
    FOREIGN KEY("Escola_idEscola")
    REFERENCES "Escola"("PK_COD_ENTIDADE"),
  CONSTRAINT "fk_Sala_TipoSala1"
    FOREIGN KEY("TipoSala_idTipoSala")
    REFERENCES "TipoSala"("idTipoSala")
);
CREATE INDEX "tp-ibd"."Sala.fk_Sala_Escola1_idx" ON "Sala" ("Escola_idEscola");
CREATE INDEX "tp-ibd"."Sala.fk_Sala_TipoSala1_idx" ON "Sala" ("TipoSala_idTipoSala");
CREATE TABLE "tp-ibd"."Midia"(
  "idMidia" INTEGER NOT NULL,
  "TipoMidia_idTipoMidia" INTEGER NOT NULL,
  "Escola_idEscola" INTEGER NOT NULL,
  "Escola_Endereco_idEndereco" INTEGER NOT NULL,
  "Escola_TipoEscola_idTipoEscola" INTEGER NOT NULL,
  PRIMARY KEY("idMidia","TipoMidia_idTipoMidia","Escola_idEscola","Escola_Endereco_idEndereco","Escola_TipoEscola_idTipoEscola"),
  CONSTRAINT "fk_Midia_TipoMidia1"
    FOREIGN KEY("TipoMidia_idTipoMidia")
    REFERENCES "TipoMidia"("idTipoMidia"),
  CONSTRAINT "fk_Midia_Escola1"
    FOREIGN KEY("Escola_idEscola","Escola_Endereco_idEndereco","Escola_TipoEscola_idTipoEscola")
    REFERENCES "Escola"("PK_COD_ENTIDADE","Endereco_idEndereco","TipoEscola_idTipoEscola")
);
CREATE INDEX "tp-ibd"."Midia.fk_Midia_TipoMidia1_idx" ON "Midia" ("TipoMidia_idTipoMidia");
CREATE INDEX "tp-ibd"."Midia.fk_Midia_Escola1_idx" ON "Midia" ("Escola_idEscola","Escola_Endereco_idEndereco","Escola_TipoEscola_idTipoEscola");
CREATE TABLE "tp-ibd"."Laboratorio"(
  "idLaboratorio" INTEGER NOT NULL,
  "Escola_idEscola" INTEGER NOT NULL,
  "TipoLaboratorio_idTipoLaboratorio" INTEGER NOT NULL,
  PRIMARY KEY("idLaboratorio","Escola_idEscola","TipoLaboratorio_idTipoLaboratorio"),
  CONSTRAINT "fk_Laboratorio_Escola1"
    FOREIGN KEY("Escola_idEscola")
    REFERENCES "Escola"("PK_COD_ENTIDADE"),
  CONSTRAINT "fk_Laboratorio_TipoLaboratorio1"
    FOREIGN KEY("TipoLaboratorio_idTipoLaboratorio")
    REFERENCES "TipoLaboratorio"("idTipoLaboratorio")
);
CREATE INDEX "tp-ibd"."Laboratorio.fk_Laboratorio_Escola1_idx" ON "Laboratorio" ("Escola_idEscola");
CREATE INDEX "tp-ibd"."Laboratorio.fk_Laboratorio_TipoLaboratorio1_idx" ON "Laboratorio" ("TipoLaboratorio_idTipoLaboratorio");
COMMIT;

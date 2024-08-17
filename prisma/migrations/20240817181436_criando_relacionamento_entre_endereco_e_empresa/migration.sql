/*
  Warnings:

  - The primary key for the `Enderecos` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `BAIRRO` on the `Enderecos` table. All the data in the column will be lost.
  - You are about to drop the column `CEP` on the `Enderecos` table. All the data in the column will be lost.
  - You are about to drop the column `CIDADE` on the `Enderecos` table. All the data in the column will be lost.
  - You are about to drop the column `COMPLEMENTO` on the `Enderecos` table. All the data in the column will be lost.
  - You are about to drop the column `CREATED_AT` on the `Enderecos` table. All the data in the column will be lost.
  - You are about to drop the column `ENDEROCO` on the `Enderecos` table. All the data in the column will be lost.
  - You are about to drop the column `END_ID` on the `Enderecos` table. All the data in the column will be lost.
  - You are about to drop the column `NUMERO` on the `Enderecos` table. All the data in the column will be lost.
  - You are about to drop the column `UF` on the `Enderecos` table. All the data in the column will be lost.
  - You are about to drop the column `UPDATED_AT` on the `Enderecos` table. All the data in the column will be lost.
  - Added the required column `bairro` to the `Enderecos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cep` to the `Enderecos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cidade` to the `Enderecos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `endereco` to the `Enderecos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `numero` to the `Enderecos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `uf` to the `Enderecos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `Enderecos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `empresaId` to the `points_collection` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Enderecos" DROP CONSTRAINT "Enderecos_pkey",
DROP COLUMN "BAIRRO",
DROP COLUMN "CEP",
DROP COLUMN "CIDADE",
DROP COLUMN "COMPLEMENTO",
DROP COLUMN "CREATED_AT",
DROP COLUMN "ENDEROCO",
DROP COLUMN "END_ID",
DROP COLUMN "NUMERO",
DROP COLUMN "UF",
DROP COLUMN "UPDATED_AT",
ADD COLUMN     "bairro" TEXT NOT NULL,
ADD COLUMN     "cep" TEXT NOT NULL,
ADD COLUMN     "cidade" TEXT NOT NULL,
ADD COLUMN     "complemento" TEXT,
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "endereco" TEXT NOT NULL,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD COLUMN     "numero" TEXT NOT NULL,
ADD COLUMN     "uf" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
ADD CONSTRAINT "Enderecos_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "points_collection" ADD COLUMN     "empresaId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "points_collection" ADD CONSTRAINT "points_collection_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

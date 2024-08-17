/*
  Warnings:

  - You are about to drop the column `enderecoId` on the `companies` table. All the data in the column will be lost.
  - You are about to drop the column `enderecoId` on the `points_collection` table. All the data in the column will be lost.
  - Added the required column `empresaId` to the `Enderecos` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "companies" DROP CONSTRAINT "companies_enderecoId_fkey";

-- DropForeignKey
ALTER TABLE "points_collection" DROP CONSTRAINT "points_collection_enderecoId_fkey";

-- DropIndex
DROP INDEX "companies_enderecoId_key";

-- DropIndex
DROP INDEX "points_collection_enderecoId_key";

-- AlterTable
ALTER TABLE "Enderecos" ADD COLUMN     "empresaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "companies" DROP COLUMN "enderecoId";

-- AlterTable
ALTER TABLE "points_collection" DROP COLUMN "enderecoId";

-- AddForeignKey
ALTER TABLE "Enderecos" ADD CONSTRAINT "Enderecos_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

/*
  Warnings:

  - You are about to drop the column `empresaId` on the `companies` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "companies" DROP CONSTRAINT "companies_empresaId_fkey";

-- AlterTable
ALTER TABLE "companies" DROP COLUMN "empresaId",
ADD COLUMN     "enderecoId" INTEGER;

-- AlterTable
ALTER TABLE "points_collection" ADD COLUMN     "enderecoId" INTEGER;

-- AddForeignKey
ALTER TABLE "companies" ADD CONSTRAINT "companies_enderecoId_fkey" FOREIGN KEY ("enderecoId") REFERENCES "Enderecos"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "points_collection" ADD CONSTRAINT "points_collection_enderecoId_fkey" FOREIGN KEY ("enderecoId") REFERENCES "Enderecos"("id") ON DELETE SET NULL ON UPDATE CASCADE;

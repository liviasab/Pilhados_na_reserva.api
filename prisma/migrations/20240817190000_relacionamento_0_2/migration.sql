/*
  Warnings:

  - Made the column `empresaId` on table `points_collection` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "companies" DROP CONSTRAINT "companies_empresaId_fkey";

-- DropForeignKey
ALTER TABLE "points_collection" DROP CONSTRAINT "points_collection_empresaId_fkey";

-- AlterTable
ALTER TABLE "companies" ALTER COLUMN "empresaId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "points_collection" ALTER COLUMN "empresaId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "companies" ADD CONSTRAINT "companies_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "Enderecos"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "points_collection" ADD CONSTRAINT "points_collection_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

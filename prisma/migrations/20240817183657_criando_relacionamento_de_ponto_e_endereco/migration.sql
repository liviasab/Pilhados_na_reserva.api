/*
  Warnings:

  - A unique constraint covering the columns `[enderecoId]` on the table `companies` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[enderecoId]` on the table `points_collection` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `enderecoId` to the `companies` table without a default value. This is not possible if the table is not empty.
  - Added the required column `enderecoId` to the `points_collection` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "companies" ADD COLUMN     "enderecoId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "points_collection" ADD COLUMN     "enderecoId" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "companies_enderecoId_key" ON "companies"("enderecoId");

-- CreateIndex
CREATE UNIQUE INDEX "points_collection_enderecoId_key" ON "points_collection"("enderecoId");

-- AddForeignKey
ALTER TABLE "companies" ADD CONSTRAINT "companies_enderecoId_fkey" FOREIGN KEY ("enderecoId") REFERENCES "Enderecos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "points_collection" ADD CONSTRAINT "points_collection_enderecoId_fkey" FOREIGN KEY ("enderecoId") REFERENCES "Enderecos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

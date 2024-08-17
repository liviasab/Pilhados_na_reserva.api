/*
  Warnings:

  - You are about to drop the column `empresaId` on the `Enderecos` table. All the data in the column will be lost.
  - Added the required column `empresaId` to the `companies` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Enderecos" DROP CONSTRAINT "Enderecos_empresaId_fkey";

-- AlterTable
ALTER TABLE "Enderecos" DROP COLUMN "empresaId";

-- AlterTable
ALTER TABLE "companies" ADD COLUMN     "empresaId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "companies" ADD CONSTRAINT "companies_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "Enderecos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

/*
  Warnings:

  - Added the required column `donoId` to the `companies` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "companies" ADD COLUMN     "donoId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "companies" ADD CONSTRAINT "companies_donoId_fkey" FOREIGN KEY ("donoId") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

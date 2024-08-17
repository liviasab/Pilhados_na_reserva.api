/*
  Warnings:

  - Added the required column `coordenadas` to the `companies` table without a default value. This is not possible if the table is not empty.
  - Added the required column `coordenadas` to the `points_collection` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "companies" ADD COLUMN     "coordenadas" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "points_collection" ADD COLUMN     "coordenadas" TEXT NOT NULL;

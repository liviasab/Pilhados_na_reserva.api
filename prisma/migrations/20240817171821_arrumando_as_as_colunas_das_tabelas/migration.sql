/*
  Warnings:

  - You are about to drop the column `end_emp_id` on the `companies` table. All the data in the column will be lost.
  - You are about to drop the column `use_emp_id` on the `companies` table. All the data in the column will be lost.
  - You are about to drop the column `companies_Id` on the `points_collection` table. All the data in the column will be lost.
  - You are about to drop the column `emp_pco_id` on the `points_collection` table. All the data in the column will be lost.
  - You are about to drop the column `end_pco_id` on the `points_collection` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "points_collection" DROP CONSTRAINT "points_collection_companies_Id_fkey";

-- AlterTable
ALTER TABLE "companies" DROP COLUMN "end_emp_id",
DROP COLUMN "use_emp_id";

-- AlterTable
ALTER TABLE "points_collection" DROP COLUMN "companies_Id",
DROP COLUMN "emp_pco_id",
DROP COLUMN "end_pco_id";

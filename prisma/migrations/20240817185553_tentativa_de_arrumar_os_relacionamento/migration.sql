-- DropForeignKey
ALTER TABLE "points_collection" DROP CONSTRAINT "points_collection_empresaId_fkey";

-- AlterTable
ALTER TABLE "points_collection" ALTER COLUMN "empresaId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "points_collection" ADD CONSTRAINT "points_collection_empresaId_fkey" FOREIGN KEY ("empresaId") REFERENCES "companies"("id") ON DELETE SET NULL ON UPDATE CASCADE;

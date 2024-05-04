import { metadataGenerator } from "@/entities/metadata";
import { HomePage } from "@/views/homePage";
import { Metadata } from "next";




export async function generateMetadata(): Promise<Metadata> { return await metadataGenerator() }

export const dynamic = 'force-dynamic';

export default async function Home() {

  return (
    <>
      <HomePage />
    </>
  );
}

import { metadataGenerator } from '@/entities/metadata'
import { SubcategoryPage } from '@/views/subcategoryPage'
import { Metadata } from 'next'
import React from 'react'



let subcategoryHref: string
export const dynamic = 'force-dynamic'
export async function generateMetadata(): Promise<Metadata> { return await metadataGenerator({quantity: 'many', url:`/subcategories?filters[href][$eq]=${subcategoryHref}&populate=*`}) }
const page = ({params, searchParams}: {params:{subcategory:string, category: string}, searchParams: Record<string, string>}) => {
  subcategoryHref = params.subcategory

  return (
    <>
    <SubcategoryPage searchParams={searchParams}  params={params} />
    </>
  )
}

export default page
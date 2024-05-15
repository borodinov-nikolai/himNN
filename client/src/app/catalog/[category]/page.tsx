import { metadataGenerator } from '@/entities/metadata'
import { CategoryPage } from '@/views/categoryPage'
import { Metadata } from 'next'
import React from 'react'


export const dynamic = 'force-dynamic'
let categoryHref: string
export async function generateMetadata(): Promise<Metadata> { return await metadataGenerator({ quantity: 'many', url:`/categories?filters[href][$eq]=${categoryHref}&populate=*`}) }

const page = ({params, searchParams}: {params:{category:string}, searchParams: Record<string, string>}) => {
   categoryHref = params.category
  
  return (
    <>
    <CategoryPage searchParams={searchParams} categoryName={params?.category} />
    </>
  )
}

export default page
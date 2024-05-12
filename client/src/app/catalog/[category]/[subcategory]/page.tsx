import { SubcategoryPage } from '@/views/subcategoryPage'
import React from 'react'




export const dynamic = 'force-dynamic'

const page = ({params, searchParams}: {params:{subcategory:string, category: string}, searchParams: Record<string, string>}) => {

  return (
    <>
    <SubcategoryPage searchParams={searchParams}  params={params} />
    </>
  )
}

export default page
import { CategoryPage } from '@/views/categoryPage'
import React from 'react'




export const dynamic ='force-dynamic'


const page = ({params, searchParams}: {params:{category:string}, searchParams: Record<string, string>}) => {
  

  return (
    <>
    <CategoryPage searchParams={searchParams} categoryName={params?.category} />
    </>
  )
}

export default page
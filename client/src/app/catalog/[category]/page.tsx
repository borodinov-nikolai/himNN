import { CategoryPage } from '@/views/categoryPage'
import React from 'react'




export const dynamic ='force-dynamic'


const page = ({params}: {params:{category:string}}) => {


  return (
    <>
    <CategoryPage categoryName={params?.category} />
    </>
  )
}

export default page
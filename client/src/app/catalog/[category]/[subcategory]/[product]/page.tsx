import { ProductPage } from '@/views/productPage'
import React from 'react'


export const dynamic = 'force-dynamic'

const page = ({params}: {params: {product:string}}) => {
 
  return (
    <>
    <ProductPage productId={params.product} />
    </>
  )
}

export default page
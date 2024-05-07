import { ProductPage } from '@/views/productPage'
import React from 'react'



const page = ({params}: {params: {product:string}}) => {
 
  return (
    <>
    <ProductPage productId={params.product} />
    </>
  )
}

export default page
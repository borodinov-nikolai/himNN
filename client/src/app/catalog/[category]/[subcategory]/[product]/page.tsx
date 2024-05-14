import { metadataGenerator } from '@/entities/metadata'
import { ProductPage } from '@/views/productPage'
import { Metadata } from 'next'
import React from 'react'


export const dynamic = 'force-dynamic'
let id: string

export async function generateMetadata(): Promise<Metadata> { return await metadataGenerator({ quantity: 'one', url:`/products/${id}?populate=*`}) }

const page = ({params}: {params: {product:string}}) => {

  id=params.product

  return (
    <>
    <ProductPage productId={params.product} />
    </>
  )
}

export default page
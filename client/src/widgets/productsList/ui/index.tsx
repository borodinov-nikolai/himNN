import React, { FC } from 'react'
import styles from './ProductList.module.scss'
import { ProductCard } from '@/entities/productCard'
import { IProducts } from '@/entities/product'
import { AddToFavoritesButton } from '@/features/addToFavoritesBtn'
import { AddToCartButton } from '@/features/addToCartButton/ui'



interface IProps {
    products?: IProducts
}

export const ProductsList: FC<IProps> = ({products}) => {

  return (
    <ul className={styles.root} >

        {products?.data?.map(({id, attributes})=> 
        <li key={id} ><ProductCard toCartButton={<AddToCartButton/>} toFavoritesButton={<AddToFavoritesButton/>} product={ {data: {id, attributes}}} /></li>
        )}
      
    </ul>
  )
}

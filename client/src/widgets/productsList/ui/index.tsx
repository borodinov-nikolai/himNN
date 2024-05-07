import React, { FC } from 'react'
import styles from './ProductList.module.scss'
import { ProductCard } from '@/entities/productCard'
import { IProducts } from '@/entities/product'



interface IProps {
    products?: IProducts
}

export const ProductsList: FC<IProps> = ({products}) => {

  return (
    <ul className={styles.root} >

        {products?.data?.map(({id, attributes})=> 
        <li key={id} ><ProductCard product={ {data: {id, attributes}}} /></li>
        )}
      
    </ul>
  )
}

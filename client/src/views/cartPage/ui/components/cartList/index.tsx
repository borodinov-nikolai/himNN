'use client'
import React from 'react'
import styles from './CartList.module.scss'
import { useAppSelector } from '@/shared/hooks/redux'
import Image from 'next/image'
import { imageUrl } from '@/entities/image'
import Counter from '@/shared/ui/counter'


const CartList = () => {
  const {products, totalCount, totalPrice} = useAppSelector((state)=> state.cart)



  return (
    <div className={styles.root} >
      <table className={styles.table} >
        <thead>
          <tr>
            <th scope='col' >Товары</th>
            <th scope='col' >Количество</th>
            <th scope='col' >Цена</th>
            <th scope='col' >Сумма</th>
            <th scope='col' ></th>
          </tr>
        </thead>
        <tbody>
          {products?.map(({id, image, name, price, priceUnits, count})=>
            <tr key={id} >
               <td><div><Image src={imageUrl + image} width={200} height={200} alt='product image'/> <p>{name}</p> </div></td>
               <td><div><Counter value={count}/></div></td>
               <td><div><span>{price}</span> <span>{priceUnits}</span> </div></td>
               <td><div>{totalPrice} <span>руб.</span></div></td>
               <td><div></div></td>
            </tr>
          )}
        </tbody>
    
      </table>
    </div>
  )
}

export default CartList
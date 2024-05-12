'use client'
import React, { useEffect, useState } from 'react'
import styles from './OrderList.module.scss'
import { useAppDispatch, useAppSelector } from '@/shared/hooks/redux'
import Image from 'next/image'
import { imageUrl } from '@/entities/image'
import { addCartItem, selectCart} from '@/entities/cart'
import CloseIcon from '@/shared/icons/close'
import { removeFavoritesItem, selectFavorites } from '@/entities/favorites'
import Button from '@/shared/ui/button'


const OrderList = () => {
  const dispatch = useAppDispatch()
  const [inCart, setInCart] = useState<number[]>()
  const {products} = useAppSelector(selectCart)

  

  return (
    <div className={styles.root} >
      <table className={styles.table} >
        <thead>
          <tr>
            <th scope='col' >Товары</th>
            <th scope='col' >Количество</th>
            <th scope='col' >Цена</th>
            <th scope='col' >Сумма</th>
          </tr>
        </thead>
        <tbody>
          {products?.map(({id, image, name, price, priceUnits, count})=>
            <tr key={id} >
               <td><div className={styles.preview} ><div className={styles.imageHolder} >
                 {image && <Image src={imageUrl + image} width={200} height={200} alt='product image'/>}
               </div> <p>{name}</p> </div></td>
               <td><div>{count}</div></td>
               <td><div><span>{price}</span> <span>{priceUnits}</span> </div></td>
               <td><div className={styles.totalPrice} >{price * count} <span>руб.</span></div></td>
            </tr>
          )}
        </tbody>
    
      </table>
    </div>
  )
}

export default OrderList
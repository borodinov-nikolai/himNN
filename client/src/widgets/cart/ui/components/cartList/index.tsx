'use client'
import React from 'react'
import styles from './CartList.module.scss'
import { useAppDispatch, useAppSelector } from '@/shared/hooks/redux'
import Image from 'next/image'
import { imageUrl } from '@/entities/image'
import Counter from '@/shared/ui/counter'
import { removeCartItem, selectCart, setCartItemCount } from '@/entities/cart'
import CloseIcon from '@/shared/icons/close'


const CartList = () => {
  const dispatch = useAppDispatch()
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
            <th scope='col' ></th>
          </tr>
        </thead>
        <tbody>
          {products?.map(({id, image, name, price, priceUnits, count})=>
            <tr key={id} >
               <td><div className={styles.preview} ><div className={styles.imageHolder} >
                 <Image src={imageUrl + image} width={200} height={200} alt='product image'/>
               </div> <p>{name}</p> </div></td>
               <td><div><Counter onChange={(value)=> dispatch(setCartItemCount({id, count:value}))} value={count}/></div></td>
               <td><div><span>{price}</span> <span>{priceUnits}</span> </div></td>
               <td><div className={styles.totalPrice} >{price * count} <span>руб.</span></div></td>
               <td><div className={styles.remove} > <button onClick={()=> dispatch(removeCartItem({id}))} ><CloseIcon/></button> </div></td>
            </tr>
          )}
        </tbody>
    
      </table>
    </div>
  )
}

export default CartList
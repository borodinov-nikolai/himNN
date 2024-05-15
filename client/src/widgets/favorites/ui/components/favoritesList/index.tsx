'use client'
import React, { useEffect, useState } from 'react'
import styles from './FavoritesList.module.scss'
import { useAppDispatch, useAppSelector } from '@/shared/hooks/redux'
import Image from 'next/image'
import { imageUrl } from '@/entities/image'
import { addCartItem, selectCart} from '@/entities/cart'
import CloseIcon from '@/shared/icons/close'
import { removeFavoritesItem, selectFavorites } from '@/entities/favorites'
import Button from '@/shared/ui/button'
import { RequestACallBtn } from '@/features/recuestACallBtn'


const FavoritesList = () => {
  const dispatch = useAppDispatch()
  const [inCart, setInCart] = useState<number[]>()
  const {products} = useAppSelector(selectFavorites)
  const {products: cartItems} = useAppSelector(selectCart)

  
  useEffect(()=> {

    const inCartArray = cartItems.filter((item)=> products.some(({id})=> item.id === id)).map(({id})=> id)
    setInCart(inCartArray)
  }, [products, cartItems])

  return (
    <div className={styles.root} >
      <table className={styles.table} >
        <thead>
          <tr>
            <th scope='col' >Товары</th>
            <th scope='col' >Цена</th>
            <th scope='col' ></th>
            <th scope='col' ></th>
          </tr>
        </thead>
        <tbody>
          {products?.map(({id, image, name, price, priceUnits, inStock})=>
            <tr key={id} >
               <td><div className={styles.preview} ><div className={styles.imageHolder} >
                 {image && <Image src={imageUrl + image} width={200} height={200} alt='product image'/>}
               </div> <p>{name}</p> </div></td>
               <td><div><span>{price}</span> <span>{priceUnits}</span> </div></td>
               <td>
               {(!inCart?.includes(id) && inStock) && <div className={styles.toCartBtn} > 
              <Button onClick={()=> dispatch(addCartItem({id, name, price, priceUnits, image, count:1}))} >В корзину</Button>
               </div>} 
               {(inCart?.includes(id) && inStock) && <div className={styles.inCartBtn} >
                <button>В корзине</button>
               </div>}
               {
                !inStock && <div className={styles.requestACallBtn} >
                  <RequestACallBtn>Под заказ</RequestACallBtn>
                </div>
               }
                </td>
               <td><div className={styles.remove} >  <button onClick={()=> dispatch(removeFavoritesItem({id}))} ><CloseIcon/></button> </div></td>
            </tr>
          )}
        </tbody>
    
      </table>
    </div>
  )
}

export default FavoritesList
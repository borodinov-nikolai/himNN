'use client'
import React, { useEffect, useState } from 'react'
import styles from './MobileFavoritesList.module.scss'
import { useAppDispatch, useAppSelector } from '@/shared/hooks/redux'
import { addCartItem, selectCart} from '@/entities/cart'
import Image from 'next/image'
import { imageUrl } from '@/entities/image'
import CloseIcon from '@/shared/icons/close'
import { removeFavoritesItem, selectFavorites } from '@/entities/favorites'
import Button from '@/shared/ui/button'



const MobileFavoritesList = () => {
  const dispatch = useAppDispatch()
  const [inCart, setInCart] = useState<number[]>()
  const { products } = useAppSelector(selectFavorites)
  const {products: cartItems} = useAppSelector(selectCart)


  useEffect(()=> {

    const inCartArray = cartItems.filter((item)=> products.some(({id})=> item.id === id)).map(({id})=> id)
    setInCart(inCartArray)
  }, [products, cartItems])


  return (
    <div className={styles.root} >

      <ul className={styles.list} >
        {products?.map(({ id, name, price, priceUnits, image}) =>{
       
          return(
          <li className={styles.listItem} key={id} >
            <div className={styles.listItem_leftSide} >
              <div className={styles.imageHolder} >
                {image && <Image src={imageUrl + image} width={400} height={400} alt='cart image' />}
              </div>
            </div>
            <div className={styles.listItem_rightSide} >
              <p className={styles.name} >{name}</p>
              <div>
                <p>Цена</p>
                <p>{price} <span>{priceUnits}</span></p>
              </div>
              {!inCart?.includes(id) ? <div className={styles.toCartBtn} > 
              <Button onClick={()=> dispatch(addCartItem({id, name, price, priceUnits, image, count:1}))} >В корзину</Button>
               </div> : 
               <div className={styles.inCartBtn} >
                <button>В корзине</button>
               </div>
               }
            </div>
            <button onClick={()=> dispatch(removeFavoritesItem({id}))} className={styles.removeBtn} >
              <CloseIcon/>
             </button>
          </li>
          )}
          
        )}
      </ul>
    
    </div>
  )
}

export default MobileFavoritesList
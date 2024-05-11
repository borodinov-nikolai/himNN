'use client'
import React from 'react'
import styles from './MobileCartList.module.scss'
import { useAppDispatch, useAppSelector } from '@/shared/hooks/redux'
import { removeCartItem, selectCart, setCartItemCount } from '@/entities/cart'
import Image from 'next/image'
import { imageUrl } from '@/entities/image'
import Counter from '@/shared/ui/counter'
import CloseIcon from '@/shared/icons/close'



const MobileCartList = () => {
  const dispatch = useAppDispatch()
  const { products } = useAppSelector(selectCart)
  return (
    <div className={styles.root} >

      <ul className={styles.list} >
        {products?.map(({ id, name, price, priceUnits, image, count }) =>
          <li className={styles.listItem} key={id} >
            <div className={styles.listItem_leftSide} >
              <div className={styles.imageHolder} >
                { image &&  <Image src={imageUrl + image} width={400} height={400} alt='cart image' />}
              </div>
              <Counter onChange={(value)=> dispatch(setCartItemCount({id, count: value}))} value={count} />
            </div>
            <div className={styles.listItem_rightSide} >
              <p className={styles.name} >{name}</p>
              <div>
                <p>Цена</p>
                <p>{price} <span>{priceUnits}</span></p>
              </div>
              <div>
                <p>Сумма</p>
                <p>{ price * count} <span>руб.</span></p>
              </div>
            </div>
            <button onClick={()=> dispatch(removeCartItem({id}))} className={styles.removeBtn} >
              <CloseIcon/>
             </button>
          </li>
        )}
      </ul>
    
    </div>
  )
}

export default MobileCartList
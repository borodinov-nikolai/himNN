'use client'
import React from 'react'
import styles from './Cart.module.scss'
import CartList from '../components/cartList'
import MobileCartList from '../components/mobileCartList'
import Link from 'next/link'
import { useAppDispatch, useAppSelector } from '@/shared/hooks/redux'
import { clearCart, selectCart } from '@/entities/cart'
import Button from '@/shared/ui/button'
import Breadcrumb from '@/shared/ui/breadcrumb'
import { useRouter } from 'next/navigation'
import { selectFavorites } from '@/entities/favorites'


export const Cart = () => {
  const router = useRouter()
  const dispatch = useAppDispatch()
  const {totalPrice, totalCount} = useAppSelector(selectCart)
  const favorites = useAppSelector(selectFavorites)
  return (
    <div className={styles.root} >
<div  className='container'>
          <Breadcrumb items={[{title: 'Корзина'}]} />
        <h1 className={styles.title} >Корзина</h1>
  <div className={styles.header} >
          <div className={styles.navigation} >
            <p><Link href={'#'} >Заказ <span>{`(${totalCount})`}</span> </Link></p>
            <p><Link href={'/favorites'} >Избранное <span>{`(${favorites.products.length})`}</span></Link> </p>
          </div>
          {totalCount > 0 ? <button onClick={()=> dispatch(clearCart())} className={styles.clearBtn} >
  
            <svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
  <path d="M6.48148 4.99825L9.69602 1.78484C10.1013 1.37967 10.1013 0.709046 9.69602 0.303877C9.29071 -0.101292 8.61985 -0.101292 8.21454 0.303877L5 3.51729L1.78546 0.303877C1.38015 -0.101292 0.709294 -0.101292 0.303983 0.303877C-0.101328 0.709046 -0.101328 1.37967 0.303983 1.78484L3.51852 4.99825L0.303983 8.21167C-0.101328 8.61684 -0.101328 9.28746 0.303983 9.69263C0.513627 9.9022 0.779175 10 1.04472 10C1.31027 10 1.57582 9.9022 1.78546 9.69263L5 6.47922L8.21454 9.69263C8.42418 9.9022 8.68973 10 8.95528 10C9.22083 10 9.48637 9.9022 9.69602 9.69263C10.1013 9.28746 10.1013 8.61684 9.69602 8.21167L6.48148 4.99825Z" fill="#BEBEBE"/>
  </svg>
  
            <span>Очистить</span>
            </button> : <div></div> }
        </div>
             <div className={styles.cartList} ><CartList/></div>
             <div className={styles.mobileCartList} ><MobileCartList/></div>
             <div className={styles.footer} >
              <p className={styles.totalPrice} >
                {`Итого: ${totalPrice} руб.`}
              </p>
              <button onClick={()=> router.push('/catalog')} className={styles.toCatalogBtn} >В каталог</button>
              {totalCount > 0 && <div className={styles.orderBtn} ><Button onClick={()=> router.push('/order')} > Оформить заказ</Button></div>}
             </div>
</div>
    </div>
  )
}

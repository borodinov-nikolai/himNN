'use client'
import React from 'react'
import styles from './Order.module.scss'
import Breadcrumb from '@/shared/ui/breadcrumb'
import OrderList from '../components/orderList'
import MobileOrderList from '../components/mobileOrderList'
import { useAppSelector } from '@/shared/hooks/redux'
import { selectCart } from '@/entities/cart'
import Link from 'next/link'
import OrderForm from '../components/orderForm'


export const Order = () => {
  const {totalPrice} = useAppSelector(selectCart)
  return (
    <div className={styles.root} >
      <div className="container">
        <Breadcrumb items={[{title: 'Оформление заказа'}]} />
        <h1 className={styles.title} >Офрмление заказа</h1>
        <div className={styles.content} >
          <div className={styles.orderInfo} >
            <div className={styles.orderInfo_header} >
              <p>Ваш заказ</p>
              <p><Link href={'/cart'} >Изменить</Link> </p>
            </div>
            <div className={styles.orderInfo_body} >
            <div className={styles.orderInfo_prices} >
              <div><span>Сумма: </span> <span>{totalPrice} руб.</span></div>
            </div>
            <div className={styles.orderInfo_total} ><span>Итого: </span> <span>{totalPrice}  руб.</span></div>
            </div>
          </div>
          <div className={styles.orderList} ><OrderList/></div>
          <div className={styles.mobileOrderList} ><MobileOrderList/></div>
          <div className={styles.orderForm} ><OrderForm/></div>
        </div>  
      </div>
    </div>
  )
}

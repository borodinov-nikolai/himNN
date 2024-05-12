'use client'
import React from 'react'
import styles from './OrderForm.module.scss'
import ProfileIcon from '@/shared/icons/profile'



const OrderForm = () => {
  return (
    <div className={styles.root} >
      <div className={styles.header} >
        <ProfileIcon/> <p>Информация о покупателе</p>
      </div>
      <div className={styles.personType} >
        <p>Тип платильщика</p>
        <div>
          <div></div>
          <div></div>
        </div>
      </div>
    </div>
  )
}

export default OrderForm
import React from 'react'
import styles from './CartPage.module.scss'
import CartList from '../components/cartList'


export const CartPage = () => {
  return (
    <main className={styles.root} >
      <div className='container' >
        <h1>Козина</h1>
        <CartList/>
      </div>

    </main>
  )
}

import React from 'react'
import styles from './Filters.module.scss'
import { Checkbox, Slider } from 'antd'
import cs from 'classnames'

export const Filters = () => {
  return (
    <div className={styles.root} >
       <div className={cs(styles.filter, styles.price)} >
        <h3>Цена</h3>
        <div className={styles.priceInputs} >
            <input type="text" />
             <input type="text" />
             </div>
             <Slider range />
       </div>

       <div className={cs(styles.filter, styles.availability)} >
         <Checkbox/> <span>В наличии</span>
       </div>
       <div className={cs(styles.filter, styles.availability)} >
          <span>Размер</span>
          <Checkbox/> <span>15 x 15 mm</span>
          <Checkbox/> <span>16 x 16 mm</span>
       </div>
       <div className={cs(styles.filter, styles.availability)} >
         <span>В наличии</span>
         <Checkbox/> <span>Россия</span>
         <Checkbox/> <span>Китай</span>
         <Checkbox/> <span>Россия</span>
       </div>
    </div>
  )
}

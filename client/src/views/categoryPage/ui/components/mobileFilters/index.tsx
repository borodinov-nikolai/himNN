'use client'
import React, { FC, useState } from 'react'
import styles from './MobileFilters.module.scss'
import { Filters } from '@/widgets/filters'
import cs from 'classnames'
import { IFilters } from '@/entities/filter'
import { IProducts } from '@/entities/product'
import { useClickOutside } from '@/shared/hooks/useClickOutside'



interface IProps {
    filters?: IFilters
    allProducts?: IProducts
    products?: IProducts
  }
  

const MobileFilters: FC<IProps> = ({filters, allProducts, products}) => {
    const [isOpen, setIsOpen] = useState<boolean>()


    const onClickOutside = ()=> {
          setIsOpen(false)
    }
    const ref = useClickOutside(onClickOutside)




  return (
    <div  className={styles.root} >
          <button onClick={(e)=>{e.stopPropagation(); setIsOpen(!isOpen)}} className={styles.openBtn} > <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M6.30013 2.45H21.7001C22.9835 2.45 24.0335 3.5 24.0335 4.78333V7.35C24.0335 8.28333 23.4501 9.45 22.8668 10.0333L17.8501 14.4667C17.1501 15.05 16.6835 16.2167 16.6835 17.15V22.1667C16.6835 22.8667 16.2168 23.8 15.6335 24.15L14.0001 25.2C12.4835 26.1333 10.3835 25.0833 10.3835 23.2167V17.0333C10.3835 16.2167 9.9168 15.1667 9.45013 14.5833L5.0168 9.91666C4.43346 9.33333 3.9668 8.28333 3.9668 7.58333V4.9C3.9668 3.5 5.0168 2.45 6.30013 2.45Z" stroke="#4E4E4E" strokeWidth="1.5" strokeMiterlimit="10" strokeLinecap="round" strokeLinejoin="round"/>
          </svg>
           <span>Фильтр</span></button> 
           <div ref={ref}   className={cs(styles.filters, isOpen && styles.filters__active)} >
              <Filters onConfirm={()=> setIsOpen(false)} filters={filters} products={products} allProducts={allProducts} />
           </div>
 
    </div>
  )
}

export default MobileFilters
'use client'
import { ICategory } from '@/entities/category'
import React, { FC } from 'react'
import styles from './Categories.module.scss'
import cs from 'classnames'
interface IProps {
  categories: ICategory
}

export const Categories: FC<IProps> = ({categories}) => {
  console.log(categories)

  return (
    <div className={styles.root} >
      <div className={cs('container', styles.inner)} >
        
      </div>
    </div>
  )
}

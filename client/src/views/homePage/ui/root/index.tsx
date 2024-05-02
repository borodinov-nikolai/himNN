import React from 'react'
import Carousel from '../components/carousel'
import styles from './HomePage.module.scss'
import Adnatages from '../components/advantages'

import { getAllCategories } from '@/entities/category'
import  Categories from '../components/categories'
import Partners from '../components/partners'


export const HomePage = async () => {
  const categories = await getAllCategories();
  return (
    <main className={styles.root} >
      <section className={styles.carousel} ><Carousel /></section>
      <section className={styles.advantages} ><Adnatages /></section>
      <section className={styles.categories} ><Categories categories={categories} /></section>
      <section className={styles.partners} > <Partners/> </section>
    </main>
  )
}

import React from 'react'
import styles from './CategoryPage.module.scss'
import { getCategory } from '@/entities/category'
import Breadcrumb from '@/shared/ui/breadcrumb'
import { Filters } from '@/widgets/filters'




export const CategoryPage = async ({categoryName}: {categoryName :string }) => {
  const category = await getCategory(categoryName)

  const {name} = category?.data[0].attributes || {}

  return (
    <main className={styles.root} >
      <div className='container' >
        <Breadcrumb items={[{title: 'Каталог', href: '/catalog'}, {title: name}]} />
        <h1 className={styles.title} >{name}</h1>
        <div className={styles.filters} ><Filters/></div>
      </div>
    </main>
  )
}

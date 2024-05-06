import React from 'react'
import styles from './CategoryPage.module.scss'
import { getCategory } from '@/entities/category'
import Breadcrumb from '@/shared/ui/breadcrumb'
import { Filters } from '@/widgets/filters'
import { getAllFilters } from '@/entities/filter'
import { getAllProducts } from '@/entities/product'
import { SubcategoriesList } from '@/widgets/subCategoriesList'
import { ProductsList } from '@/widgets/productsList'




export const CategoryPage = async ({categoryName, searchParams}: {categoryName :string, searchParams: Record<string, string> }) => {
  const category = await getCategory(categoryName)
  const filters = await getAllFilters()
  const {name} = category?.data[0]?.attributes || {}
  const products = await getAllProducts({params: {name: 'category', value: categoryName}, searchParams})
  const allProducts = await getAllProducts()

   
  return (
    <main className={styles.root} >
      <div className='container' >
        <Breadcrumb items={[{title: 'Каталог', href: '/catalog'}, {title: name}]} />
        <h1 className={styles.title} >{name}</h1>
        <div className={styles.mainWrapper} >
          <div className={styles.filters} ><Filters products={products} allProducts={allProducts}  filters={filters} /></div>
          <div className={styles.content}>
            <div className={styles.categories} >
              <SubcategoriesList products={products} />
            </div>
            <div className={styles.mobileFilters} >Фильтр</div>
            <div className={styles.products} >
              <ProductsList products={products} />
            </div>
             </div>
        </div>
      </div>
    </main>
  )
}

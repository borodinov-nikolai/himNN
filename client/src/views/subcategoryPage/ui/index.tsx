import React, { FC } from 'react'
import styles from './SubcategoryPage.module.scss'
import { getCategory } from '@/entities/category'
import { getAllFilters } from '@/entities/filter'
import { getAllProducts } from '@/entities/product'
import { Filters } from '@/widgets/filters'
import { ProductsList } from '@/widgets/productsList'
import { getSubcategory } from '@/entities/subcategory'
import Breadcrumb from '@/shared/ui/breadcrumb'



interface IProps {
  params: {category: string, subcategory: string} 
   searchParams: Record<string, string> 
}




export const SubcategoryPage: FC<IProps> = async ({params, searchParams}) => {
    const category = await getCategory(params?.category)
    const subcategory = await getSubcategory(params?.subcategory)
    const filters = await getAllFilters()
    const {name: categoryName, href: categoryHref} = category?.data[0]?.attributes || {}
    const {name: subcategoryName} = subcategory?.data[0]?.attributes || {}
    const products = await getAllProducts({params: {name: 'subcategory', value: params.subcategory}, searchParams})
    const allProducts = await getAllProducts()
  console.log(products)
  return (
    <main className={styles.root} >  
          <div className='container' >
    <Breadcrumb items={[{title: 'Каталог', href: '/catalog'}, {title: categoryName, href:`/catalog/${categoryHref}` }, {title: subcategoryName}]} />
    <h1 className={styles.title} >{subcategoryName}</h1>
    <div className={styles.mainWrapper} >
      <div className={styles.filters} ><Filters products={products} allProducts={allProducts}  filters={filters} /></div>
      <div className={styles.content}>
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

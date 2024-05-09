import React, { FC } from 'react'
import styles from './SubcategoryPage.module.scss'
import { getCategory } from '@/entities/category'
import { getAllFilters } from '@/entities/filter'
import { getAllProducts } from '@/entities/product'
import { Filters } from '@/widgets/filters'
import { ProductsList } from '@/widgets/productsList'
import { getSubcategory } from '@/entities/subcategory'
import Breadcrumb from '@/shared/ui/breadcrumb'
import MobileFilters from '../components/mobileFilters'
import ReactMarkdown from "react-markdown";
import remarkGfm from 'remark-gfm'

interface IProps {
  params: {category: string, subcategory: string} 
   searchParams: Record<string, string> 
}




export const SubcategoryPage: FC<IProps> = async ({params, searchParams}) => {
    const category = await getCategory(params?.category)
    const subcategory = await getSubcategory(params?.subcategory)
    const filters = await getAllFilters()
    const {name: categoryName, href: categoryHref} = category?.data[0]?.attributes || {}
    const {name: subcategoryName, description} = subcategory?.data[0]?.attributes || {}
    const products = await getAllProducts({params: {name: 'subcategory', value: params.subcategory}, searchParams})
    const allProducts = await getAllProducts()
   

  
  return (
    <main className={styles.root} >  
          <div className='container' >
    <Breadcrumb items={[{title: 'Каталог', href: '/catalog'}, {title: categoryName, href:`/catalog/${categoryHref}` }, {title: subcategoryName}]} />
    <div>
     <div className={styles.description} >
       <ReactMarkdown
        remarkPlugins={[remarkGfm]}
        components={{
          h1: 'h1',
          h2: 'h2',
          h3: 'h3',
          h4: 'h4',
          h5: 'h5',
          h6: 'h6',
          p: 'p',
          hr: 'hr',
          blockquote: 'blockquote',
          ul: 'ul',
          ol: 'ol',
          li: 'li',
          em: 'em',
          strong: 'strong',
          code: 'code',
          pre: 'pre',
          a: 'a',
          img: 'img',
        }}
        >{description}</ReactMarkdown>
     </div>
    </div>
    <h1 className={styles.title} >{subcategoryName}</h1>
    <div className={styles.mainWrapper} >
      <div className={styles.filters} ><Filters products={products} allProducts={allProducts}  filters={filters} /></div>
      <div className={styles.content}>
        <MobileFilters products={products} allProducts={allProducts} filters={filters} />
        <div className={styles.products} >
          <ProductsList products={products} />
        </div>
         </div>
    </div>
  </div>
  </main>
  )
}

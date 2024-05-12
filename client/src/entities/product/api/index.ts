import { $serverApi } from "@/shared/configs/axios"
import { IProduct, IProducts } from "../interfaces/product"
import qs from 'qs'



export const getAllProducts = async (queryParams:{searchParams: Record<string, string> | void, params:{name: string, value: string}} | void )=> {
    const {searchParams, params} = queryParams || {}
    const query = searchParams ? qs.stringify(searchParams) : undefined

  console.log(params)
    try {
        const {data}: {data: IProducts} = await $serverApi((params?.name && params?.value) ? `/products?${query? query: ""}&filters[${params.name}][href][$eq]=${params.value}&populate[0]=image&populate[1]=subcategory.image&populate[2]=category&sort=price:asc`: '/products?sort=price:asc')
        return data
    } catch(e) {
        console.error(e)
    }   
}


export const getProduct = async (id: string)=> {
    try {
        const {data}: {data: IProduct} = await $serverApi(`/products/${id}?populate[0]=image&populate[1]=subcategory&populate[2]=category`)
        return data
    } catch(e) {
        console.error(e)
    }
}
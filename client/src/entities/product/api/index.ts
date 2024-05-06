import { $serverApi } from "@/shared/configs/axios"
import { IProducts } from "../interfaces/product"
import qs from 'qs'



export const getAllProducts = async (queryParams:{searchParams: Record<string, string> | void, params:{name: string, value: string}} | void )=> {
    const {searchParams, params} = queryParams || {}
    const query = searchParams ? qs.stringify(searchParams) : undefined

    try {
        const {data}: {data: IProducts} = await $serverApi(params ? `/products?${query}&filters[${params.name}][href][$eq]=${params.value}&populate[0]=image&populate[1]=subcategory.image`: '/products')
        return data
    } catch(e) {
        console.error(e)
    }
}
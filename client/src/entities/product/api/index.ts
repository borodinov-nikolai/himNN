import { $serverApi } from "@/shared/configs/axios"
import { IProducts } from "../interfaces/product"
import qs from 'qs'



export const getAllProducts = async (params: Record<string, string> | void)=> {
    const query = params ? qs.stringify(params) : undefined
  
    try {
        const {data}: {data: IProducts} = await $serverApi(query ? `/products?${query}&poplulate=*`: '/products')
        return data
    } catch(e) {
        console.error(e)
    }
}
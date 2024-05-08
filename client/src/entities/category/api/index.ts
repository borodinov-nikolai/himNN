import { $serverApi } from "@/shared/configs/axios";
import { ICategories} from "../interfaces/category";



export const getAllCategories = async ()=> {
    try {
        const {data}:{data: ICategories} = await $serverApi.get('/categories?sort=name:asc&populate=*')
        return data;
    } catch(e) {
        console.error(e)
    }

}

export const getCategory = async (param: string)=> {
    try {
        const {data}:{data: ICategories} = await $serverApi.get(`/categories?filters[href]=${param}&populate=*`)
        return data;
    } catch(e) {
        console.error(e)
    }

}
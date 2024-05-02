import { $serverApi } from "@/shared/configs/axios";
import { ICategory } from "../interfaces/category";



export const getAllCategories = async ()=> {
    try {
        const {data}:{data: ICategory} = await $serverApi.get('/categories?populate=*')
        return data;
    } catch(e) {
        console.error(e)
    }

}
import { $serverApi } from "@/shared/configs/axios";
import { ISubcategories} from "../intrfaces/subcategory";




export const getAllSubcategories = async ()=> {
    try {
        const {data}:{data: ISubcategories} = await $serverApi.get('/subcategories?sort=name:ascpopulate=*')
        return data;
    } catch(e) {
        console.error(e)
    }

}

export const getSubcategory = async (param: string)=> {
    try {
        const {data}:{data: ISubcategories} = await $serverApi.get(`/subcategories?filters[href]=${param}&populate[0]=tables.headerRows.tableCells&populate[1]=tables.bodyRows.tableCells`)
        return data;
    } catch(e) {
        console.error(e)
    }

}
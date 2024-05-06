import { $serverApi } from "@/shared/configs/axios"
import { IFilters } from "../interfaces/filter"




export const getAllFilters = async ()=> {
    try {
        const {data}: {data: IFilters} = await $serverApi('/filters?populate=*')
        return data
    } catch(e) {
        console.error(e)
    }

   
}
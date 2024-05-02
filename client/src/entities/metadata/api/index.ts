import { $serverApi } from "@/shared/configs/axios"
import { IMetadata } from "../interfaces/metadata"



export const getMetadata = async ()=> {
     try {
          const {data}:{data: IMetadata} = await $serverApi.get('/home-page?populate=*')
          return data;
     } catch(e){
          console.error(e)
     }
    
}
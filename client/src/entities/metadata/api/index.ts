import { $serverApi } from "@/shared/configs/axios"




export const getMetadata = async (url: string)=> {
     try {
          const {data}:{data: any} = await $serverApi.get(url)
          return data;
     } catch(e){
          console.error(e)
     }
    
}
import { IProducts } from "@/entities/product";
import { emptySplitApi } from "@/shared/configs/rtk_base";




const extendedApi = emptySplitApi.injectEndpoints({
    endpoints: (build)=> ({
        searcProduct: build.query<IProducts, string>({
            query: (query)=> ({
                url: `/products?filters[name][$containsi]=${query.length > 0? query : undefined}&populate=*`
            })
            
        })
    }),
    overrideExisting: false
})



export const {useSearcProductQuery} = extendedApi
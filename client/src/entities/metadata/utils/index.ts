import { getMetadata } from "../api"




export const metadataGenerator = async ()=> {
    const data = await getMetadata()
    const {title, description, keywords} = data?.data?.attributes?.seo || {}

  
       return (
           {
            title,
            description,
            keywords
           }
       )
}
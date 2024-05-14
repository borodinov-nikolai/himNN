import { getMetadata } from "../api"




export const metadataGenerator = async ({quantity, url}:{quantity: 'one' | 'many', url: string})=> {
    const data = await getMetadata(url)

    const {title, description, keywords} = quantity === 'one' ? (data?.data?.attributes?.seo || {}):(data?.data[0]?.attributes?.seo || {})
    
   
  
       return (
           {
            title,
            description,
            keywords
           }
       )
}
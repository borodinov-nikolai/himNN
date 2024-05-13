import { emptySplitApi } from "@/shared/configs/rtk_base";




const extendedApi = emptySplitApi.injectEndpoints({
    endpoints: (build)=> ({
        sendOrder: build.mutation<any, string>({
            query: (text)=> ({
                url: `https://api.telegram.org/bot${process.env.NEXT_PUBLIC_TELEGRAM_BOT_TOKEN}/sendMessage`,
                method: 'POST',
                body: {
                    chat_id: process.env.NEXT_PUBLIC_TELEGRAM_CHAT_ID,
                    text,
                }
            })
            
        })
    }),
    overrideExisting: false
})


export const {useSendOrderMutation} = extendedApi
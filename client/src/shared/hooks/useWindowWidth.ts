import { useEffect, useState } from "react"




const useWindowWidth = () => {
    const [width, setWidth] = useState<number>()

    useEffect(() => {
        const handleResize = (e: UIEvent) => {
            if (e.target && e.target instanceof Window) {
                const { innerWidth } = e.target;
                setWidth(innerWidth);
            }
        }

        window.addEventListener('resize', handleResize)

        return () => {
            window.removeEventListener('resize', handleResize)
        }

    }, [])

    return width

}

export default useWindowWidth
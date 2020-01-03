import axios from "axios"
export function getDetailsByPid(pid){
    return new Promise(
        (resolve,reject)=>{
            axios.get("/product/details",{params:{pid:pid}}).then(result=>{
                resolve(result.data);
            })
        }
    )
}
export function getPidBySpec(tuan,size){
    return new Promise(
        (resolve,reject)=>{
            axios.get("/product/getpid",{params:{tuan:tuan,size:size}}).then(result=>{
                resolve(result.data);
            })
        }
    )
}
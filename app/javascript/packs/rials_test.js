import Vue,{ createApp } from "vue"   //Vueファイルのおおもと？？
import Test from "../test.vue"

//document.addEventListener('DOMContentLoaded', () => {
window.onload = function(){
    let element = document.createElement('hello');
    element.id = "hoge";
    document.body.appendChild(element);     //タグ生成<hello></hello>
    
    // const app = new Vue({
    //     el: '#hello',
    //     data: {
    //       message: "Can you say hello?"
    //     },
    //     components: { Test }
    // });
    const app = createApp(Test);
    app.mount('#hoge')
}
//})
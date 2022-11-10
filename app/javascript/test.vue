<template>
    <div id="helloww">
        <p class="testhoge">{{hugahuga}}</p>
        <p class="testhoge">{{butabuta}}</p>
        
    </div>
</template>

<script>
    export default{
        el:"#helloww",
        data:function(){
            return{
                hugahuga:"これはtest.vueとrails_test.jsの組み合わせで表示されています",
                butabuta:"butabuta"
            }
        }
    }
</script>

<style>
.testhoge{
    text-align: center;
    size: 30px;
    color: red;
}
</style>
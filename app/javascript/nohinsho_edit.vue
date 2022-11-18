<template>
    <input type="text" name="tori_cd" id="tori_cd" class="form-control" v-on:click="log()">
</template>
<script>
export default{
    el:"#app",
    data:function(){
        return {
            {{dt:"message"}}
        }
    },
    methods:{
        log:function(){
            console.log("てすとテスト");
        }
    }
}
</script>
<style></style>

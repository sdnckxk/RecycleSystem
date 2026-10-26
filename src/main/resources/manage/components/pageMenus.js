Vue.component('page-menus',{
    data(){
        return{
            menuList:[],
            sessionTable:toolUtil.storageGet('sessionTable'),
            isCollapse:window.isCollapse
        }
    },
    mounted() {
        let json_menuList = toolUtil.storageGet('menuList')
        if(json_menuList){
            this.menuList = JSON.parse(json_menuList)
        }
    },
    methods:{
        displayMenuName(menuName, tableName){
            // 仅调整显示文案，不影响权限/路由/功能
            const name = (menuName || '').trim()
            if(tableName === 'jiuwufenlei' && name === '旧物分类') return '废旧物品分类'
            if(tableName === 'jiuwuxinxi' && name === '旧物信息') return '废旧物品信息'
            return menuName
        },
        menuHandler(name,menuJump){
            let url = `${baseUrl}manage/page/`
            if(!name){
                url += 'index.html'
            }else{
                switch (name){
                    case 'updatePassword':
                        url += 'center/updatePassword.html';break;
                    case 'info':
                        url += this.sessionTable+'/info.html';break;
                    case 'exampaper':
                        if(menuJump=='12'){
                            url += "exampaperlist/list.html";break
                        }
                    case 'examrecord':
                        if(menuJump=='22'){
                            url += "examfailrecord/list.html";break
                        }
                    default:
                        url +=`${name}/list.html`
                }
            }
            if(menuJump){
                url += `?menuJump=${menuJump}`
            }
            window.location.href = url
        },
    },
    template:`
<div id="pageMenus">
    <el-menu default-active="1" :collapse="isCollapse.value" mode="vertical" :unique-opened="false" >
        <el-menu-item index="1" @click="menuHandler()">
            <i class="icon el-icon-s-home"></i>
            <span slot="title">首页</span>
        </el-menu-item>
        <template v-for="(item,index) in menuList">
            <el-submenu :index="String(index+2)" v-if="item.child?.length">
                <template slot="title">
                    <i class="icon el-icon-menu"></i>
                    <span slot="title">{{ item.menu }}</span>
                </template>
                <el-menu-item v-for="(item1,index1) in item.child" :key="index1" :index="(index+2)+'-'+(index1+1)"
                @click="menuHandler(item1.tableName,item1.menuJump)">
                    {{ displayMenuName(item1.menu, item1.tableName) }}
                </el-menu-item>
            </el-submenu>
        </template>
    </el-menu>
</div>
`
})
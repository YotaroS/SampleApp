<template>
    <li>
        <img :src='user.img_url'/>
        <a :href='user.link'>
            {{ user.name }}
        </a>
        <button v-if='current_user.admin'
        @click='delete_user'>
            delete user
        </button>
    </li>
</template>

<script type='text/javascript'>
export default {
    name: 'UsersListItem',
    props: {
        'user': Object,
        'current_user': Object,
        'index': Number
    },
    methods: {
        delete_user() {
            this.axios.delete(this.user.link)
                .then(() => {
                    this.$notify({
                        title: 'Success',
                        message: 'user deleted!',
                        type: 'success'
                    });
                    this.$emit('user-deleted', this.index)
                })
                .catch((error) => {
                    console.log(error)
                })
        }
    }
}
</script>

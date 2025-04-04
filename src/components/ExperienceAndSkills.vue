<template>
    <section class="text-white mt-18" id="skills">
        <div class="absolute right-0 top-[110rem] h-full w-full justify-end">
        </div>
        <div class="md:grid md:grid-cols-2 gap-8 items-center py-1 px-4 xl:gap-16 xl:px-16 text-center ">
            <div class="mt-4 md:mt-0 text-left flex flex-col z-10 h-full w-[80%]">
                <h2 class="text-4xl font-bold text-white text-left mb-4">
                    <span class="text-cyan-300 pt-8 text-center lg:text-left mx-auto max-w-xl text-4xl ">Skills</span>
                </h2>
                <div class="mt-8" v-for="skill in Skills" :key="skill.id">
                    <div class="flex items-end justify-between" data-aos="fade-right">
                        <h4 class="font-semibold  text-white">
                            {{ skill.name }}
                        </h4>
                        <h3 class="text-2xl font-bold text-white">{{ skill.level }}</h3>
                    </div>
                </div>
            </div>
            <div class="mt-4 md:mt-0 text-left flex flex-col z-10 h-full w-[80%]">
                <h2 class="text-4xl font-bold text-white text-left mb-4 ">
                    <span class="text-cyan-300 pt-8 text-center lg:text-left mx-auto max-w-xl text-4xl ">Tools</span>
                </h2>
                <div class="mt-8" v-for="tool in Tools" :key="tool.id">
                    <div class="flex items-end justify-between" data-aos="fade-right">
                        <h4 class="font-bold uppercase text-white">
                            {{ tool.name }}
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
<script setup>
import { ref } from 'vue';
const Skills = ref([
    {
        id: 1,
        name: 'HTML',
        level: 'Advanced'
    },
    {
        id: 2,
        name: 'CSS, Tailwind CSS',
        level: 'Beginner'
    },
    {
        id: 3,
        name: 'Vue',
        level: 'Beginner'
    },
    {
        id: 4,
        name: 'Javascript',
        level: 'Beginner'
    },
    {
        id: 5,
        name: 'MongoDB',
        level: 'Beginner'
    },

]);

const Tools = ref([
    {
        id: 1,
        name: 'Visual studio code',
    },
    {
        id: 2,
        name: 'Git',
    },
    {
        id: 3,
        name: 'Postman',
    },
    {
        id: 4,
        name: 'Docker',
    },

]);


</script>

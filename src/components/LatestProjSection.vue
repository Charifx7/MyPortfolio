<template>
    <section class="text-white mt-20" id="projects">
        <div class="px-4 xl:pl-16">
            <div class="mb-4 md:flex md:justify-between xl:pr-16">
                <h2 class="text-4xl font-bold text-white"> My Latest Projects</h2>
            </div>
            <ul class="px-4 sm:py-16 xl:pr-16 grid grid-cols-1 gap-6 pt-10 sm:grid-cols-2 md:gap-10 md:pt-12 lg:grid-cols-3 "
                data-aos="fade-right">
                <div v-for="project in Projects" :key="project.id" class="transition-transform duration-500 hover:scale-105">
                    <div class="h-52 md:h-[24rem] rounded-t-xl relative flex items-center justify-center group"
            :style="{ 
                backgroundImage: 'url(' + project.image + ')', 
                backgroundSize: 'cover', 
                backgroundPosition: 'center', 
                backgroundRepeat: 'no-repeat' 
            }">
                    </div>
                    <div class="text-white rounded-b-xl mt-3 bg-[#111a3e] shadow-lg border border-[#1f1641] py-6 px-4">
                        <h3 class="text-lg font-semibold uppercase lg:text-xl"> {{ project.title }}</h3>
                        <p class="text-[#ADB7BE]">{{ project.description }}</p>
                        <div class="flex flex-wrap p-2.5">
                            <div v-for="technology in project.technologies" :key="technology"
                                class="text-center ml-1 mt-1 rounded-3xl bg-[#111827]"
                                style="box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1); border: 1px solid #111827;backdrop-filter: blur(9px);-webkit-backdrop-filter: blur(9px);">
                                <p class="px-1 py-2">{{ technology }}</p>
                            </div>
                        </div>
                        <!-- Buttons for GitHub and Demo -->
                        <div class="flex mt-4 space-x-4">
                            <a :href="project.gitURL" target="_blank"
                                class="px-4 py-2 text-sm font-semibold text-white bg-blue-600 rounded-md hover:bg-blue-700">
                                View GitHub
                            </a>
                            <a  v-if ="project.webURL":href="project.webURL" target="_blank"
                                class="px-4 py-2 text-sm font-semibold text-white bg-green-600 rounded-md hover:bg-green-700">
                                View Demo
                            </a>
                        </div>
                    </div>
                </div>
            </ul>
        </div>
    </section>
</template>
<script setup>
import { ref, computed } from 'vue';

const Projects = ref([
    {
        id: 1,
        image: '/assets/project1.png',
        title: 'To-do list',
        description: 'Practicing Vue.js, State management, API integration, CRUD operations, async handling, and debugging for a to-do list project.',
        technologies: ['Vue', 'Pinia', 'Mock-API', 'TailwindCSS'],
        gitURL: 'https://github.com/Charifx7/todo-list',
        webURL: 'https://todo-list-beta-two-62.vercel.app/'
    },
    {
        id: 2,
        image: '/assets/project2.png',
        title: 'E-Commerce with Temporary Data Storage',
        description: 'Practicing Vue.js to build a responsive e-commerce application that uses a temporary file for data storage.', 
        technologies: ['Vue', 'TailwindCSS'],
        gitURL: 'https://github.com/Charifx7/e-commerce-front-end',
        webURL: 'https://e-commerce-front-end-fawn.vercel.app/'
    },
    {
        id: 3,
        image: '/assets/project3.png',
        title: 'Full stack Recipe app',
        description: 'Practicing using the MEVN stack to build a recipe app with CRUD operations connected to a MongoDB database',
        technologies: ['Vue', 'MongoDB', 'Express', 'Node.js', 'TailwindCSS'],
        gitURL: 'https://github.com/Charifx7/fullstack_MEVN_recipe_app',
        webURL: 'https://fullstack-mevn-recipe-app-charif.vercel.app/'
    },
  
]);



</script>

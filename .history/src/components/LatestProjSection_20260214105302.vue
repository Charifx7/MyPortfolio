<template>
    <section class="text-white mt-20" id="projects">
        <div class="px-4 xl:pl-16">
            <div class="mb-4 flex justify-center">
                <h2 class="text-4xl font-bold text-white" data-aos="fade-up">My Latest Projects</h2>
            </div>
            <ul class="px-4 sm:py-16 xl:pr-16 grid grid-cols-1 gap-6 pt-10 sm:grid-cols-2 md:gap-10 md:pt-12 lg:grid-cols-3"
                data-aos="fade-right">
                <div v-for="project in Projects" :key="project.id" 
                    class="flex flex-col h-full transition-transform duration-500 hover:scale-105">
                    <div class="h-52 md:h-[24rem] rounded-t-xl relative flex items-center justify-center"
                        :style="{ 
                            backgroundImage: 'url(' + project.image + ')', 
                            backgroundSize: 'cover', 
                            backgroundPosition: 'center', 
                            backgroundRepeat: 'no-repeat' 
                        }">
                    </div>
                    <div class="flex flex-col flex-grow text-white rounded-b-xl mt-3 bg-[#111a3e] shadow-lg border border-[#1f1641] py-6 px-4">
                        <h3 class="text-lg font-semibold uppercase lg:text-xl">{{ project.title }}</h3>
                        <p class="text-[#ADB7BE] flex-grow min-h-[60px] mt-2">{{ project.description }}</p>
                        <div class="flex flex-wrap gap-2 mt-4 mb-6">
                            <div v-for="technology in project.technologies" :key="technology"
                                class="text-center rounded-full px-4 py-1.5 text-sm font-medium
                                       bg-gradient-to-r from-cyan-400/10 to-blue-400/10 
                                       border border-cyan-400/20
                                       text-cyan-300 "
                            >
                                {{ technology }}
                            </div>
                        </div>
                        <!-- Buttons for GitHub and Demo -->
                        <div class="flex mt-auto space-x-4">
                            <a :href="project.gitURL" target="_blank"
                                class="px-4 py-2 text-sm font-semibold text-white bg-blue-600 rounded-md hover:bg-blue-700">
                                View GitHub
                            </a>
                            <a v-if="project.webURL" :href="project.webURL" target="_blank"
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
        image: '/assets/project3.png',
        title: 'Full stack Recipe app',
        description: 'Full-stack recipe app with CRUD operations, JWT Authentication, and Role-based access control (RBAC). Users can create and manage their own recipes, while admin users have extended permissions',
        technologies: ['Vue','Node.js','Express', 'MongoDB','TailwindCSS', 'JWT','Pinia'],
        gitURL: 'https://github.com/Charifx7/fullstack_MEVN_recipe_app',
        webURL: 'https://fullstack-mevn-recipe-app-charif.vercel.app/'
    },

    {
        id: 4,
        image: '/assets/project0.jpg',
        title: 'Booking Project',
        description: 'In progress',
        technologies: ['React', 'Zustand', 'Nest.js','MySQL','TailwindCSS','JWT','Feature-based architecture'],
        gitURL: 'https://github.com/Charifx7',
        webURL: ''
    },
    // {
    //     id: 0,
    //     image: '/assets/project0.jpg',
    //     title: 'TEMP',
    //     description: 'TEMP',
    //     technologies: ['TEMP'],
    //     gitURL: 'https://github.com/Charifx7',
    //     webURL: ''
    // },
  
]);



</script>

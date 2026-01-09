<template>
    <section id="skills" class="py-20">
        <div class="container mx-auto px-4">
            <h2 class="text-4xl font-bold text-center text-white mb-12" data-aos="fade-up">Technical skills</h2>
            <div class="grid md:grid-cols-1 lg:grid-cols-3 gap-8">
                
                <!-- Frontend Section -->
                <div class="bg-[#111a3e] rounded-xl p-8 border border-[#1f1641] hover:shadow-xl transition-all duration-300"
                    data-aos="fade-up" data-aos-delay="100">
                    <div class="flex items-center mb-8">
                        <div class="w-12 h-12 bg-gradient-to-r from-cyan-400 to-blue-500 rounded-lg flex items-center justify-center">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7" />
                            </svg>
                        </div>
                        <h3 class="text-2xl font-bold ml-4 text-cyan-300">Frontend Development</h3>
                    </div>
                    <div class="grid grid-cols-1 gap-4">
                        <div v-for="skill in sortedFrontendSkills" :key="skill.id" 
                            class="bg-[#1a2544] rounded-lg p-4 hover:bg-[#1f2d52] transition-all duration-300">
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <img :src="skill.icon" alt="skill icon" class="w-8 h-8 object-contain"/>
                                    <h4 class="font-semibold text-white">{{ skill.name }}</h4>
                                </div>
                                <span class="px-3 py-1 text-sm rounded-full"
                                    :class="{
                                        'bg-yellow-900/50 text-orange-400': skill.level === 'Advanced',
                                        'bg-yellow-600/50 text-yellow-400': skill.level === 'Intermediate',
                                        'bg-emerald-900/50 text-emerald-400': skill.level === 'Beginner',
                                        'bg-gray-400/50 text-white': skill.level === 'Learning'
                                    }">
                                    {{ skill.level }}
                                </span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Backend Section -->
                <div class="bg-[#111a3e] rounded-xl p-8 border border-[#1f1641] hover:shadow-xl transition-all duration-300"
                    data-aos="fade-up" data-aos-delay="200">
                    <div class="flex items-center mb-8">
                        <div class="w-12 h-12 bg-gradient-to-r from-cyan-400 to-blue-500 rounded-lg flex items-center justify-center">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2m-2-4h.01M17 16h.01" />
                            </svg>
                        </div>
                        <h3 class="text-2xl font-bold ml-4 text-cyan-300">Backend Development</h3>
                    </div>
                    <div class="grid grid-cols-1 gap-4">
                        <div v-for="skill in sortedBackendSkills" :key="skill.id" 
                            class="bg-[#1a2544] rounded-lg p-4 hover:bg-[#1f2d52] transition-all duration-300">
                            <div class="flex items-center justify-between">
                                <div class="flex items-center space-x-3">
                                    <img :src="skill.icon" alt="skill icon" class="w-8 h-8 object-contain"/>
                                    <h4 class="font-semibold text-white">{{ skill.name }}</h4>
                                </div>
                                <span class="px-3 py-1 text-sm rounded-full"
                                    :class="{
                                        'bg-yellow-900/50 text-orange-400': skill.level === 'Advanced',
                                        'bg-blue-900/50 text-blue-400': skill.level === 'Intermediate',
                                        'bg-emerald-900/50 text-emerald-400': skill.level === 'Beginner',
                                        'bg-gray-400/50 text-white': skill.level === 'Learning'
                                    }">
                                    {{ skill.level }}
                                </span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Tools & DevOps Section -->
                <div class="bg-[#111a3e] rounded-xl p-8 border border-[#1f1641] hover:shadow-xl transition-all duration-300"
                    data-aos="fade-up" data-aos-delay="300">
                    <div class="flex items-center mb-8">
                        <div class="w-12 h-12 bg-gradient-to-r from-cyan-400 to-blue-500 rounded-lg flex items-center justify-center">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                            </svg>
                        </div>
                        <h3 class="text-2xl font-bold ml-4 text-cyan-300">Tools</h3>
                    </div>
                    <div class="grid grid-cols-2 gap-4">
                        <div v-for="skill in sortedToolsAndDevOps" :key="skill.id" 
                            class="bg-[#1a2544] rounded-lg p-4 hover:bg-[#1f2d52] transition-all duration-300">
                            <div class="flex items-center space-x-3">
                                <img :src="skill.icon" alt="tool icon" class="w-8 h-8 object-contain"/>
                                <div class="flex-1">
                                    <h4 class="font-semibold text-white">{{ skill.name }}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script setup>
import { ref, computed } from 'vue';

const frontendSkills = ref([
    {
        id: 1,
        name: 'HTML',
        level: 'Advanced',
        icon: 'https://www.svgrepo.com/show/303205/html-5-logo.svg'
    },  
    {
        id: 2,
        name: 'CSS',
        level: 'Intermediate',
        icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/CSS3_logo_and_wordmark.svg/1200px-CSS3_logo_and_wordmark.svg.png'
    },
    {
        id: 3,
        name: 'JavaScript',
        level: 'Beginner',
        icon: 'https://static.vecteezy.com/system/resources/thumbnails/027/127/463/small_2x/javascript-logo-javascript-icon-transparent-free-png.png'
    },
    {
        id: 4,
        name: 'Vue.js',
        level: 'Beginner',
        icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue.js_Logo_2.svg/1200px-Vue.js_Logo_2.svg.png'
    },
    {
        id: 5,
        name: 'Tailwind CSS',
        level: 'Beginner',
        icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSDKn3vA2YUbXzN0ZC3gALWJ08gJN-Drl15w&s'
    },
    {
        id: 5,
        name: 'React',
        level: 'Learning',
        icon: 'https://www.svgrepo.com/show/452092/react.svg'
    }
]);

const backendSkills = ref([
    {
        id: 1,
        name: 'Node.js',
        level: 'Beginner',
        icon: 'https://www.svgrepo.com/show/354119/nodejs-icon.svg'
   
    },
    {
        id: 2,
        name: 'MongoDB',
        level: 'Beginner',
        icon: 'https://www.svgrepo.com/show/331488/mongodb.svg'
    },
    {
        id: 2,
        name: 'Nest.js',
        level: 'Learning',
        icon: 'https://logowik.com/content/uploads/images/nestjs-node-js1721157586.logowik.com.webp'
    },
   
]);

const toolsAndDevOps = ref([
    {
        id: 1,
        name: 'Git',
        icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1200px-Git_icon.svg.png'
    },
    {
        id: 2,
        name: 'GitHub',
        icon: 'https://img.icons8.com/ios-filled/50/ffffff/github.png'
    },
    {
        id: 3,
        name: 'VSCode',
        icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/768px-Visual_Studio_Code_1.35_icon.svg.png'
    },
    {
        id: 4,
        name: 'Postman',
        icon: 'https://www.svgrepo.com/show/354202/postman-icon.svg'
    },
]);

// Helper function to sort skills by level
const sortByLevel = (skills) => {
    const levelOrder = {
        'Advanced': 1,
        'Intermediate': 2,
        'Beginner': 3,
        'Learning': 4
    };
    
    return [...skills].sort((a, b) => {
        return levelOrder[a.level] - levelOrder[b.level];
    });
};

// Computed properties for sorted skills
const sortedFrontendSkills = computed(() => sortByLevel(frontendSkills.value));
const sortedBackendSkills = computed(() => sortByLevel(backendSkills.value));
const sortedToolsAndDevOps = computed(() => toolsAndDevOps.value);
</script>

<style scoped>
.grid {
    grid-auto-rows: 1fr;
}
</style>





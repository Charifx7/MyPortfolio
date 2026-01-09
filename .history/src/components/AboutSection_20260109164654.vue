<template>
    <section class="text-white mt-18 w-full" id="about">
        <div class="absolute z-0 top-[93rem] inset-x-0 h-64 flex items-start">
            <div class="h-24 w-64 bg-gradient-to-br opacity-20"></div>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-16 items-start py-8 px-4 xl:gap-16 sm:py-16 xl:px-16 z-1">
            <!-- Education Section -->
            <div data-aos="flip-right" class="space-y-8">
                <h2 class="text-4xl font-bold text-white text-left mb-4">
                    <span class="text-cyan-300">Education</span>
                </h2>
                <div class="space-y-8">
                    <div v-for="element in education" :key="element.id"
                        class="flex items-center rounded-xl shadow-lg border border-[#1f1641] py-3 bg-gradient-to-r from-[#111a3e] to-[#111a3e]">
                        <div class="w-full pl-4">
                            <h3 class="text-cyan-300 text-left text-2xl">
                                {{ element.School }}
                            </h3>
                            <p class="text-white">{{ element.program }}</p>
                            <p class="text-white">{{ element.year }}</p>
                        </div>
                    </div>
                    <h2 class="text-4xl font-bold text-white text-left mb-4">
                        <span class="text-cyan-300">Work Experience</span>
                    </h2>
                    <div class="space-y-8">
                        <div v-for="element in workExperience" :key="element.id"
                            class="flex items-center rounded-xl shadow-lg border border-[#1f1641] py-3 bg-gradient-to-r from-[#111a3e] to-[#111a3e]">
                            <div class="w-full pl-4">
                                <h3 class="text-cyan-300 text-left text-2xl">
                                    {{ element.Company }}
                                </h3>
                                <p class="text-white">{{ element.role }}</p>
                                <p class="text-white">{{ element.duration }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- About Me Section -->
            <div class="space-y-8" data-aos="flip-right">
                <h2 class="text-4xl font-bold text-white text-left mb-4">
                    <span class="text-cyan-300">About</span> Me
                </h2>
                <p class="text-base lg:text-lg">
                    My name is Muhammadcharif Binlateh. I am a new graduate in Computer Science with a passion for
                    creating responsive, user-friendly websites. I have experience with HTML, CSS, JavaScript, Vue,
                    Node.js, and MongoDB, and I'm always eager to learn new technologies to enhance my skills. I look
                    forward to applying my knowledge and growing in the field of web development.
                </p>
            </div>
        </div>
    </section>
</template>

<script setup>
import { ref } from 'vue';
const education = ref([
    {
        id: 1,
        School: 'Prince of Songkla University',
        program: 'Bachelor of Science (Computer Science)',
        year: '2019-2023'
    },
])
const workExperience = ref([
    {
        id: 1,
        Company: 'BRK Inter Transport Company Limited',
        role: 'Programmer, ITSupport',
        duration: 'Oct 2025 - Current'
    },
])
</script>

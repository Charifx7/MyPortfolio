<template>
    <section class="relative w-full" data-aos="zoom-in-up">
        <div class="w-full px-5 sm:px-8 md:px-12 lg:px-8 max-w-screen-lg lg:max-w-screen-xl mx-auto relative">
            <div class="grid lg:grid-cols-2 gap-10 xl:gap-14 relative pt-24 lg:max-w-none max-w-2xl md:max-w-3xl mx-auto">
                <div class="lg:py-6">
                    <div class="text-center lg:text-left">
                        <h1 class="pt-4 text-white font-bold text-4xl md:text-5xl lg:text-6xl">
                            Hi, I'm <span
                                class="text-transparent bg-gradient-to-r sm:bg-gradient-to-b md:bg-gradient-to-l lg:bg-gradient-to-r bg-clip-text from-cyan-400 to-blue-600">
                                Charif
                            </span>
                        </h1>
                    </div>
                    <p
                        class="text-gray-300 pt-8 text-center lg:text-left mx-auto max-w-xl text-4xl text-transparent bg-gradient-to-r sm:bg-gradient-to-b md:bg-gradient-to-l lg:bg-gradient-to-r from-cyan-400 to-blue-600 bg-clip-text">
                        Web Developer
                    </p>
                    <div class="flex items-center gap-3 pt-9 flex-col sm:flex-row sm:w-max sm:mx-auto lg:mx-0">
                        <a href="https://www.google.com" target="_blank" class="w-full sm:w-max">
                            <button class="border ry px-6 md:px-7 py-3 rounded-full relative group w-full flex justify-center 
            bg-gradient-to-r from-cyan-600 to-blue-600 transition-transform duration-500 hover:scale-105"
                                style="background-color: #4DD0E1; border-color: #004d73;">
                                <span class="text-lg font-bold text-white">Resume</span>
                            </button>
                        </a>
                    </div>
                </div>
                <div class="flex items-center justify-center lg:h-full md:h-auto">
                    <div
                        class="relative flex items-center justify-center w-72 h-72 sm:w-96 sm:h-96 rounded-full shadow-lg border">
                        <img src="@/assets/top_picture.jpg" alt="Hero pic" width="500" height="auto" loading="lazy"
                            class="w-full h-full rounded-full object-cover fade-in-zoom" />
                        <div
                            class="absolute inset-0 bg-gradient-to-tr opacity-25 from-[#007fdb] to-[#832561] blur-2xl z-[-1]">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
<script setup>
import { ref } from 'vue';
const Menu = ref([
    { name: 'About Me', href: '#about' },
    { name: 'Skills', href: '#skills' },
    { name: 'Projects', href: '#projects' },
    { name: 'Contact', href: '#contact' },
]);

import AOS from 'aos';
import 'aos/dist/aos.css';
AOS.init();
</script>

<style>
@keyframes fadeInZoom {
    0% {
        opacity: 0;
        transform: scale(0.9);
    }

    100% {
        opacity: 1;
        transform: scale(1);
    }
}

.fade-in-zoom {
    animation: fadeInZoom 1s ease-out forwards;
}
</style>
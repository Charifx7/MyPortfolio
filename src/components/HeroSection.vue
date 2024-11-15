<template>
    <section class="relative w-full" data-aos="zoom-in-up">
        <!-- <div class="absolute top-0 inset-x-0 h-64 flex items-start">
            <div class="h-24 w-2/3 bg-gradient-to-br from-[#570cac] blur-2xl invisible opacity-40"></div>
            <div class="h-20 w-3/5 bg-gradient-to-r from-[#670ccf] opqcity-40 blur-2xl"></div>
        </div>-->
        <div class="w-full px-5 sm:px-8 md:px-12 lg:px-8 max-w-screen-lg lg:max-w-screen-xl mx-auto relative">
            <div
                class="grid lg:grid-cols-2 gap-10 xl:gap-14 relative pt-24 lg:max-w-none max-w-2xl md:max-w-3xl mx-auto">
                <div class="lg:py-6">
                    <div class="text-center lg:text-left">
                        <h1 class="pt-4 text-white font-bold text-4xl md:text-5xl lg:text-6xl">
                            Hi, I'm <span
                                class="text-transparent bg-gradient-to-r sm:bg-gradient-to-b md:bg-gradient-to-l lg:bg-gradient-to-rr from-white to-[#00aeff]">
                                Charif
                            </span>
                        </h1>
                    </div>
                    <p class="text-gray-300 pt-8 text-center lg:text-left mx-auto max-w-xl text-4xl">
                        Junior Web developer
                    </p>
                    <div class="flex items-center gap-3 pt-9 flex-col sm:flex-row sm:w-max sm:mx-auto lg:mx-0">
                        <button
                            class="border ry px-6 md:px-7 py-3 rounded-full relative group w-full sm:w-max flex justify-center" style="background-color: #004d73; border-color: #004d73;">
                            <div
                                class="hover:scale-105 transition-all ease-in-out flex justify-center items-center relative">
                                <a href="/resume.pdf" download="resume.pdf" class="text-lg font-bold text-white">Resume</a>
                            </div>
                        </button>
                    </div>
                </div>
                <div class="lg:h-full md:flex">
                    <div
                        class="flex w-full h-96 min-h-[24rem] lg:min-h-[none] lg:w-full lg:h-full items-center relative">
                        <div
                            class="absolute z-0 top-1/2 -translate-y-1/2 w-5/6 right-0 h-[calc(80%+20px)] bg-gradient-to-tr opacity-25 from-[#007fdb] to-[#832561] blur-2xl">
                        </div>
                        <div
                            class="absolute h-full z-10 p-2 -translate-y-1/2 top-1/2 lg:right-3 md:right-40 sm:right-16 rounded-full shadow-lg border">
                            <img src="@/assets/top_picture.jpg" alt="Hero pic" width="500" height="auto" loading="lazy"
                                class="w-full h-full rounded-full object-cover">
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
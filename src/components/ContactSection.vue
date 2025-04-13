<template>
  <section class="text-white mt-10" id="contact">
    <div class="container mx-auto px-4 py-12">
      <!-- Header -->
      <div class="text-center mb-12" data-aos="fade-up">
        <h1 class="text-4xl md:text-5xl font-bold">
          <span class="text-cyan-300">Get in</span> Touch
        </h1>
  
        <p class="text-gray-300 mt-4 text-lg">
          You can reach me through any of the contact below and I'll get back to you as soon as possible.
          </p>
      </div>

      <!-- Contact Grid -->
      <div class="max-w-4xl mx-auto" data-aos="fade-up" data-aos-delay="200">
        <!-- Contact Cards -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
          <!-- Email Card -->
          <div class="bg-[#111a3e] p-6 rounded-xl border border-[#1f1641] hover:shadow-xl transition-all duration-300">
            <div class="flex items-center space-x-4">
              <div
                class="w-12 h-12 bg-gradient-to-r from-cyan-400 to-blue-500 rounded-lg flex items-center justify-center">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-white" fill="none" viewBox="0 0 24 24"
                  stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                </svg>
              </div>
              <div class="flex-grow">
                <h3 class="text-xl font-semibold text-cyan-300">Email</h3>
                <div class="flex items-center justify-between">
                  <a class="text-gray-300 hover:text-white transition-colors">
                    charif.edu7@gmail.com
                  </a>
                  <button @click="copyEmail" class="ml-2 p-2 text-gray-300 hover:text-white transition-colors"
                    :title="emailCopyStatus">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                      stroke="currentColor">
                      <path v-if="!emailCopied" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z" />
                      <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                    </svg>
                  </button>
                </div>
              </div>
            </div>
          </div>

          <!-- Phone Card -->
          <div class="bg-[#111a3e] p-6 rounded-xl border border-[#1f1641] hover:shadow-xl transition-all duration-300">
            <div class="flex items-center space-x-4">
              <div
                class="w-12 h-12 bg-gradient-to-r from-cyan-400 to-blue-500 rounded-lg flex items-center justify-center">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-white" fill="none" viewBox="0 0 24 24"
                  stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                </svg>
              </div>
              <div>
                <h3 class="text-xl font-semibold text-cyan-300">Phone</h3>
                <a class="text-gray-300 hover:text-white transition-colors">
                  097-348-8899
                </a>
              </div>
            </div>
          </div>
          <!-- Line Card -->
          <div class="bg-[#111a3e] p-6 rounded-xl border border-[#1f1641] hover:shadow-xl transition-all duration-300">
            <div class="flex items-center space-x-4">
              <div class="w-12 h-12 bg-gradient-to-r from-cyan-400 to-blue-500 rounded-lg flex items-center justify-center">
                <svg 
                  xmlns="http://www.w3.org/2000/svg" 
                  class="h-6 w-6 text-white" 
                  viewBox="0 0 24 24" 
                  fill="currentColor"
                >
                  <path d="M12 2C6.48 2 2 6.48 2 12C2 17.52 6.48 22 12 22C17.52 22 22 17.52 22 12C22 6.48 17.52 2 12 2ZM16.95 14.91C16.51 15.65 15.76 16.22 14.79 16.63C14.08 16.93 13.28 17.1 12.45 17.1C11.45 17.1 10.54 16.89 9.72 16.47C8.9 16.05 8.24 15.48 7.74 14.76C7.24 14.04 7 13.24 7 12.35C7 11.41 7.26 10.57 7.79 9.82C8.32 9.07 9.07 8.5 10.04 8.09C10.75 7.79 11.55 7.62 12.38 7.62C13.38 7.62 14.29 7.83 15.11 8.25C15.93 8.67 16.59 9.24 17.09 9.96C17.59 10.68 17.83 11.48 17.83 12.37C17.83 13.31 17.57 14.15 17.04 14.9L16.95 14.91ZM14.5 12.35H13.28V11.12C13.28 10.84 13.05 10.62 12.77 10.62C12.49 10.62 12.27 10.84 12.27 11.12V12.35H11.05C10.77 12.35 10.55 12.57 10.55 12.85C10.55 13.13 10.77 13.35 11.05 13.35H12.27V14.58C12.27 14.86 12.49 15.08 12.77 15.08C13.05 15.08 13.28 14.86 13.28 14.58V13.35H14.5C14.78 13.35 15 13.13 15 12.85C15 12.57 14.78 12.35 14.5 12.35Z"/>
                </svg>
              </div>
              <div class="flex-grow">
                <h3 class="text-xl font-semibold text-cyan-300">Line</h3>
                <div class="flex items-center justify-between">
                  <a class="text-gray-300 hover:text-white transition-colors">
                    snk_charif
                  </a>
                  <button @click="copyLine" class="ml-2 p-2 text-gray-300 hover:text-white transition-colors"
                    :title="lineCopyStatus">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                      stroke="currentColor">
                      <path v-if="!lineCopied" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z" />
                      <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                    </svg>
                  </button>
                </div>
              </div>
            </div>
          </div>
          <!-- Github Card -->
          <a 
            href="https://github.com/Charifx7" 
            target="_blank" 
            class="block bg-[#111a3e] p-6 rounded-xl border border-[#1f1641] hover:shadow-xl transition-all duration-300 hover:scale-105"
          >
            <div class="flex items-center space-x-4">
              <div class="w-12 h-12 bg-gradient-to-r from-cyan-400 to-blue-500 rounded-lg flex items-center justify-center">
                <svg 
                  xmlns="http://www.w3.org/2000/svg" 
                  class="h-6 w-6 text-white"
                  viewBox="0 0 24 24"
                  fill="currentColor"
                >
                  <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
                </svg>
              </div>
              <div>
                <h3 class="text-xl font-semibold text-cyan-300">Github</h3>
                <span class="text-gray-300 group-hover:text-white transition-colors">
                  Charif
                </span>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue';

const email = "charif.edu7@gmail.com";
const lineId = "snk_charif";

// Separate states for email and line
const emailCopied = ref(false);
const emailCopyStatus = ref('Copy');
const lineCopied = ref(false);
const lineCopyStatus = ref('Copy');

const copyEmail = async () => {
  try {
    await navigator.clipboard.writeText(email);
    emailCopied.value = true;
    emailCopyStatus.value = 'Copied!';

    // Reset the copy status after 2 seconds
    setTimeout(() => {
      emailCopied.value = false;
      emailCopyStatus.value = 'Copy';
    }, 2000);
  } catch (err) {
    console.error('Failed to copy text: ', err);
  }
};

const copyLine = async () => {
  try {
    await navigator.clipboard.writeText(lineId);
    lineCopied.value = true;
    lineCopyStatus.value = 'Copied!';

    // Reset the copy status after 2 seconds
    setTimeout(() => {
      lineCopied.value = false;
      lineCopyStatus.value = 'Copy';
    }, 2000);
  } catch (err) {
    console.error('Failed to copy text: ', err);
  }
};
</script>

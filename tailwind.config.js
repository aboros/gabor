/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        // Our rich walnut palette
        primary: {
          DEFAULT: '#292524', // stone-800
          light: '#57534e', // stone-600
        },
        accent: {
          DEFAULT: '#d97706', // amber-600
          hover: '#f59e0b', // amber-500
        },
        background: {
          DEFAULT: '#fafaf9', // stone-50
          alt: '#fef3c7', // amber-50
        }
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
  ],
} 
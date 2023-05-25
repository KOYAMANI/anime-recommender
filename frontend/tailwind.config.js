module.exports = {
  purge: ['./src/**/*.{js,jsx,ts,tsx}', './public/index.html'],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        'cherry': ['"Cherry Bomb One"', 'cursive'],
        'bakbak': ['"Bakbak One"', 'cursive'],
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}

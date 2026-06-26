/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{ts,tsx}"],
  theme: {
    extend: {
      colors: {
        // paleta base do design system (clean). Ajustar à marca Gourmet.
        brand: {
          50: "#eef6ff", 100: "#d9eaff", 500: "#2563eb",
          600: "#1d4ed8", 700: "#1e40af",
        },
      },
    },
  },
  plugins: [],
};

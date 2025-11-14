# Professional Portfolio Website

A complete, modern, responsive portfolio website built with vanilla HTML5, CSS3, and JavaScript (ES6+). Fully customizable and using only free and open-source tools.

## 🌟 Features

- **Fully Responsive Design** - Mobile-first approach, works perfectly on all devices
- **Dark/Light Mode** - Toggle between themes with localStorage persistence
- **Modern UI/UX** - Clean, professional design with smooth animations
- **Accessible** - WCAG compliant with ARIA attributes and keyboard navigation
- **SEO Optimized** - Semantic HTML, meta tags, and Open Graph support
- **Performance Optimized** - Lazy loading images, optimized CSS/JS
- **Interactive Components**:
  - Hero carousel with autoplay and touch/swipe support
  - Mobile hamburger menu
  - Form validation
  - FAQ accordion
  - Service tabs
  - Scroll-to-top button
  - Toast notifications

## 📁 Project Structure

```
portfolio-website/
│
├── index.html              # Home page
├── about.html              # About page
├── services.html           # Services page
├── contact.html            # Contact page
├── privacy.html            # Privacy policy
├── terms.html              # Terms of service
│
├── styles/
│   ├── base.css            # Base styles, reset, typography, variables
│   ├── components.css      # Component styles (buttons, cards, forms, etc.)
│   ├── utilities.css      # Utility classes
│   └── responsive.css      # Media queries and responsive styles
│
├── scripts/
│   ├── main.js             # Entry point
│   ├── navigation.js       # Mobile menu, sticky header, search
│   ├── theme.js            # Dark/light mode toggle
│   ├── carousel.js         # Hero carousel functionality
│   ├── forms.js            # Form validation and handling
│   ├── portfolio.js        # Portfolio projects loading
│   ├── utils.js            # Utility functions (toast, scroll-to-top)
│   ├── tabs.js             # Tabs functionality
│   └── faq.js              # FAQ accordion
│
├── assets/
│   ├── images/             # Your images (optional)
│   └── favicon.ico         # Favicon (optional)
│
└── README.md               # This file
```

## 🚀 Quick Start

### Option 1: Local Development Server

1. **Clone or download this repository**

2. **Open in a code editor** (VS Code recommended)

3. **Use a local development server**:
   
   **VS Code Live Server Extension:**
   - Install "Live Server" extension
   - Right-click on `index.html`
   - Select "Open with Live Server"

   **Python (if installed):**
   ```bash
   python -m http.server 8000
   ```
   Then open `http://localhost:8000` in your browser

   **Node.js (if installed):**
   ```bash
   npx http-server
   ```
   Then open the URL shown in terminal

   **PHP (if installed):**
   ```bash
   php -S localhost:8000
   ```

### Option 2: Direct File Opening

Simply open `index.html` in your web browser (some features may be limited due to CORS restrictions with ES6 modules).

## 🎨 Customization Guide

### 1. Personal Information

**Update Name and Brand:**
- Search and replace "John Doe" throughout all HTML files
- Update logo text in navigation (`index.html`, `about.html`, etc.)
- Update meta tags in `<head>` sections

**Update Contact Information:**
- Edit `contact.html`:
  - Email: `john.doe@example.com`
  - Phone: `+1 (234) 567-890`
  - Social media links (GitHub, LinkedIn, Twitter)

**Update Footer:**
- Edit footer sections in all HTML files
- Update social media links
- Update newsletter form action (if connecting to backend)

### 2. Colors & Theme

**Primary Colors:**
Edit CSS variables in `styles/base.css`:
```css
:root {
    --color-primary: #007BFF;        /* Main brand color */
    --color-primary-dark: #0056b3;   /* Darker shade */
    --color-secondary: #6C757D;      /* Secondary color */
    --color-accent: #28A745;         /* Accent color */
    /* ... more colors */
}
```

**Dark Mode Colors:**
```css
:root {
    --color-dark-bg: #1a1a1a;
    --color-dark-surface: #2d2d2d;
    /* ... more dark colors */
}
```

### 3. Typography

**Fonts:**
Currently using Google Fonts (Montserrat + Roboto). To change:

1. Update font links in HTML `<head>`:
```html
<link href="https://fonts.googleapis.com/css2?family=YourFont:wght@400;600;700&display=swap" rel="stylesheet">
```

2. Update CSS variables in `styles/base.css`:
```css
:root {
    --font-primary: 'YourFont', sans-serif;
    --font-heading: 'YourHeadingFont', sans-serif;
}
```

### 4. Content

**Hero Section:**
- Edit hero slides in `index.html`
- Update images (use Unsplash URLs or your own)
- Modify text content

**Services:**
- Edit service cards in `index.html` and `services.html`
- Update service details in tabs

**Portfolio Projects:**
- Edit `scripts/portfolio.js`
- Update the `projects` array with your projects
- Replace Unsplash image URLs with your project images

**About Page:**
- Update bio text in `about.html`
- Modify skills and percentages
- Update experience timeline

**FAQ:**
- Edit FAQ items in `services.html`

### 5. Images

**Free Image Sources:**
- **Unsplash**: https://unsplash.com (used in this template)
- **Pexels**: https://www.pexels.com
- **Pixabay**: https://pixabay.com

**Using Your Own Images:**
1. Create `assets/images/` folder
2. Add your images
3. Update image `src` attributes in HTML/JS

**Image Optimization:**
- Use WebP format for better performance
- Compress images before uploading
- Use appropriate sizes (max 1920px width for hero images)

### 6. Forms

**Contact Form:**
Currently uses frontend-only validation. To connect to backend:

1. Update `scripts/forms.js`
2. Replace `simulateFormSubmission()` with actual API call:
```javascript
async function handleContactForm(e) {
    // ... validation code ...
    
    try {
        const response = await fetch('YOUR_API_ENDPOINT', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(data)
        });
        
        if (response.ok) {
            showToast('Message sent successfully!', 'success');
            form.reset();
        }
    } catch (error) {
        showToast('Failed to send message.', 'error');
    }
}
```

**Free Form Backend Options:**
- **Formspree**: https://formspree.io (free tier available)
- **Netlify Forms**: Built-in with Netlify hosting
- **EmailJS**: https://www.emailjs.com (free tier available)

### 7. Google Analytics

Uncomment and update Google Analytics code in HTML files:
```html
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'GA_TRACKING_ID'); // Replace with your ID
</script>
```

### 8. Google Maps

Update the iframe `src` in `contact.html`:
1. Go to https://www.google.com/maps
2. Search for your location
3. Click "Share" → "Embed a map"
4. Copy the iframe code
5. Replace the iframe in `contact.html`

## 📱 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## 🚀 Deployment

### Free Hosting Options:

**1. Netlify (Recommended)**
1. Sign up at https://netlify.com
2. Drag and drop your project folder
3. Your site is live!

**2. Vercel**
1. Sign up at https://vercel.com
2. Import your Git repository or upload files
3. Deploy instantly

**3. GitHub Pages**
1. Push code to GitHub repository
2. Go to Settings → Pages
3. Select branch and folder
4. Your site is live at `username.github.io/repository-name`

**4. Cloudflare Pages**
1. Sign up at https://pages.cloudflare.com
2. Connect your Git repository
3. Deploy automatically

## 🔧 Advanced Customization

### Adding New Pages

1. Create new HTML file (e.g., `blog.html`)
2. Copy structure from existing page
3. Update navigation links
4. Add page-specific content

### Adding New Sections

1. Add HTML structure
2. Style in `styles/components.css`
3. Add JavaScript functionality if needed

### Modifying Layout

- Grid layouts: Edit grid properties in component CSS
- Spacing: Adjust CSS variables in `styles/base.css`
- Container width: Change `--container-max-width` variable

## 📝 License

This project is free and open-source. Feel free to use, modify, and distribute as needed.

## 🆘 Troubleshooting

**JavaScript modules not loading:**
- Ensure you're using a local server (not file://)
- Check browser console for errors
- Verify all script files are in `scripts/` folder

**Styles not applying:**
- Check CSS file paths in HTML
- Clear browser cache
- Verify CSS files are in `styles/` folder

**Images not loading:**
- Check image URLs are correct
- Verify images are accessible (CORS if external)
- Use relative paths for local images

**Forms not working:**
- Check browser console for errors
- Verify form IDs match JavaScript selectors
- Ensure form validation is working

## 📚 Resources

- **HTML5**: https://developer.mozilla.org/en-US/docs/Web/HTML
- **CSS3**: https://developer.mozilla.org/en-US/docs/Web/CSS
- **JavaScript**: https://developer.mozilla.org/en-US/docs/Web/JavaScript
- **Font Awesome**: https://fontawesome.com
- **Google Fonts**: https://fonts.google.com
- **Unsplash**: https://unsplash.com

## 🤝 Contributing

Feel free to fork, modify, and improve this template. If you create something amazing, share it!

## 📧 Support

For questions or issues:
1. Check the troubleshooting section
2. Review code comments
3. Check browser console for errors

---

**Made with ❤️ using only free and open-source tools**

*Last updated: 2025*

#   A g e n t  
 
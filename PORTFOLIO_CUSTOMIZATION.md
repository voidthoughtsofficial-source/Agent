# Portfolio Projects Customization Guide

## How to Add Your Own Projects

### Step 1: Edit `scripts/portfolio.js`

Open `scripts/portfolio.js` and find the `projects` array (around line 17).

### Step 2: Replace with Your Projects

Each project needs these properties:

```javascript
{
    id: 1,                              // Unique number
    title: 'Project Name',              // Project title
    description: 'Project description',  // What it does
    image: 'https://...',               // Screenshot URL
    tags: ['HTML', 'CSS', 'JS'],       // Technologies used
    link: 'https://yourproject.com',    // Live demo or GitHub link
    external: true                       // true = opens in new tab
}
```

### Step 3: Example Projects

**Option A: Link to Live Demo**
```javascript
{
    id: 1,
    title: 'My Website',
    description: 'A responsive website I built for a client.',
    image: 'https://images.unsplash.com/photo-...',
    tags: ['HTML5', 'CSS3', 'JavaScript'],
    link: 'https://mywebsite.com',
    external: true
}
```

**Option B: Link to GitHub Repository**
```javascript
{
    id: 2,
    title: 'React App',
    description: 'A React application with modern features.',
    image: 'https://images.unsplash.com/photo-...',
    tags: ['React', 'JavaScript', 'CSS'],
    link: 'https://github.com/yourusername/project',
    external: true
}
```

**Option C: Link to CodePen**
```javascript
{
    id: 3,
    title: 'CSS Animation',
    description: 'Cool CSS animation I created.',
    image: 'https://images.unsplash.com/photo-...',
    tags: ['CSS3', 'Animation'],
    link: 'https://codepen.io/yourusername/pen/...',
    external: true
}
```

**Option D: Link to Project Detail Page**
```javascript
{
    id: 4,
    title: 'Mobile App',
    description: 'A mobile-first web application.',
    image: 'https://images.unsplash.com/photo-...',
    tags: ['HTML5', 'CSS3', 'JavaScript'],
    link: 'project-detail.html',  // Internal page
    external: false  // Opens in same tab
}
```

### Step 4: Get Project Images

**Free Image Sources:**
- **Unsplash**: https://unsplash.com (search for "website", "dashboard", etc.)
- **Pexels**: https://www.pexels.com
- **Screenshot your own projects**: Take screenshots of your actual work

**Image Tips:**
- Use 16:9 aspect ratio (800x450px or similar)
- Optimize images before uploading
- Use descriptive alt text

### Step 5: Save and Test

1. Save `scripts/portfolio.js`
2. Refresh your browser (make sure you're using a local server!)
3. Check the Featured Projects section

---

## Quick Template

Copy this template and customize:

```javascript
const projects = [
    {
        id: 1,
        title: 'Your Project Name',
        description: 'Describe what your project does, key features, and technologies used.',
        image: 'https://images.unsplash.com/photo-...', // Replace with your image
        tags: ['Technology1', 'Technology2', 'Technology3'],
        link: 'https://your-project-url.com', // Replace with your link
        external: true
    },
    // Add more projects...
];
```

---

## Tips

- **Keep descriptions concise**: 1-2 sentences
- **Use relevant tags**: Match technologies actually used
- **Quality images**: Use high-quality screenshots
- **Working links**: Make sure all links work
- **Update regularly**: Add new projects as you complete them

---

## Need Help?

- Check browser console (F12) for errors
- Make sure image URLs are accessible
- Verify links work before adding
- Test on mobile devices


# Contact Form Setup Guide

## Quick Setup Options

### Option 1: Formspree (Recommended - Easiest)

1. **Sign up for free**: Go to https://formspree.io
2. **Create a new form**: Click "New Form"
3. **Copy your form ID**: It will look like `xrgkjpqv` or similar
4. **Update the form endpoint** in `scripts/forms.js`:
   - Find the line: `const formspreeEndpoint = 'https://formspree.io/f/YOUR_FORMSPREE_ID';`
   - Replace `YOUR_FORMSPREE_ID` with your actual Formspree ID
   - Example: `const formspreeEndpoint = 'https://formspree.io/f/xrgkjpqv';`
5. **Test**: Submit the form and check your email!

**Free tier**: 50 submissions per month

---

### Option 2: EmailJS (Free - No Backend Needed)

1. **Sign up**: Go to https://www.emailjs.com
2. **Create email service**: Connect Gmail, Outlook, or custom SMTP
3. **Create email template**: Set up template with variables
4. **Get your credentials**:
   - Public Key
   - Service ID
   - Template ID
5. **Add EmailJS script** to your HTML files (before closing `</body>`):
```html
<script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
<script>
    emailjs.init("YOUR_PUBLIC_KEY");
</script>
```
6. **Update `scripts/forms.js`** - Replace the form submission code with:
```javascript
await emailjs.send('YOUR_SERVICE_ID', 'YOUR_TEMPLATE_ID', {
    from_name: data.name,
    from_email: data.email,
    subject: data.subject,
    message: data.message
});
```

**Free tier**: 200 emails per month

---

### Option 3: Netlify Forms (If hosting on Netlify)

1. **Add `netlify` attribute** to your form:
```html
<form class="contact-form" id="contactForm" netlify>
```
2. **Deploy to Netlify**: Forms work automatically!
3. **View submissions**: Check Netlify dashboard

**Free tier**: 100 submissions per month

---

### Option 4: Your Own Backend

If you have a backend server, update the endpoint in `scripts/forms.js`:
```javascript
const response = await fetch('YOUR_BACKEND_ENDPOINT', {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json'
    },
    body: JSON.stringify(data)
});
```

---

## Current Status

The form is currently set up with a **fallback mode** that shows a success message for testing purposes. To receive actual emails, you need to set up one of the options above.

## Testing

1. Open browser console (F12)
2. Submit the form
3. Check console for any errors
4. If using Formspree/EmailJS, check their dashboards for submissions

## Troubleshooting

- **Form not submitting?** Check browser console for errors
- **Not receiving emails?** Verify your service credentials are correct
- **CORS errors?** Make sure you're using a proper email service (Formspree/EmailJS handle this)


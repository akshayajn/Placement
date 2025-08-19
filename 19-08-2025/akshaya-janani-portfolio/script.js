// Simple enhancements for the portfolio
(function(){
  // Smooth scroll for nav links
  document.querySelectorAll('a[href^="#"]').forEach(a=>{
    a.addEventListener('click', e=>{
      const id = a.getAttribute('href');
      if(id.length > 1){
        e.preventDefault();
        document.querySelector(id)?.scrollIntoView({behavior:'smooth', block:'start'});
      }
    });
  });

  // Year in footer
  document.getElementById('year').textContent = new Date().getFullYear();

  // Theme toggle (persists in localStorage)
  const themeToggle = document.getElementById('themeToggle');
  const root = document.documentElement;
  const saved = localStorage.getItem('theme');
  if(saved === 'dark'){ document.body.classList.add('dark'); }
  themeToggle?.addEventListener('click', ()=>{
    document.body.classList.toggle('dark');
    localStorage.setItem('theme', document.body.classList.contains('dark') ? 'dark' : 'light');
  });

  // Contact form demo handler
  const form = document.getElementById('contactForm');
  form?.addEventListener('submit', (e)=>{
    e.preventDefault();
    const name = document.getElementById('name')?.value?.trim();
    const email = document.getElementById('email')?.value?.trim();
    const message = document.getElementById('message')?.value?.trim();
    if(!name || !email || !message){
      alert('Please fill out all fields.');
      return;
    }
    // demo: show a Bootstrap toast-like alert
    const alertDiv = document.createElement('div');
    alertDiv.className = 'alert alert-success m-3';
    alertDiv.role = 'alert';
    alertDiv.textContent = 'Thanks, ' + name + '! Your message has been captured locally.';
    form.parentElement.insertBefore(alertDiv, form);
    form.reset();
    setTimeout(()=>alertDiv.remove(), 4000);
  });
})();

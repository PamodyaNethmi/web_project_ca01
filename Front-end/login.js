// login.js
document.addEventListener('DOMContentLoaded', () => {
    const loginForm = document.getElementById('loginForm');

    if (loginForm) {
        loginForm.addEventListener('submit', async function(event) {
            event.preventDefault(); // Stop default form submit

            const formData = new FormData(this);

            try {
                const response = await fetch('login_process.php', {
                    method: 'POST',
                    body: formData
                });

                // Check if JSON
                const result = await response.json();

                if (result.success) {
                    alert(result.message); // ✅ Shows "Login successful!"
                    if (result.redirect) {
                        window.location.href = result.redirect;
                    }
                } else {
                    alert(result.message); // e.g., "Incorrect password."
                }
            } catch (error) {
                console.error('Error during login:', error);
                alert('An error occurred during login. Please try again.');
            }
        });
    }
});

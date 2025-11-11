// signup.js

document.addEventListener('DOMContentLoaded', () => {
    const signupForm = document.getElementById('signupForm'); // Changed ID to signupForm

    if (signupForm) {
        signupForm.addEventListener('submit', async function(event) {
            event.preventDefault(); // Prevent default form submission

            const formData = new FormData(this); // Get form data

            try {
                const response = await fetch('signup_process.php', {
                    method: 'POST',
                    body: formData
                });
                const result = await response.json(); // Parse JSON response from PHP

                if (result.success) {
                    alert(result.message);
                    this.reset(); // Clear the form
                    // Optional: Redirect to login page after successful signup
                    window.location.href = 'login.html';
                } else {
                    alert(result.message);
                }
            } catch (error) {
                console.error('Error during signup:', error);
                alert('An error occurred during signup. Please try again.');
            }
        });
    }
});


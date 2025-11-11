document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('registrationForm');

    form.addEventListener('submit', function(event) {
        event.preventDefault(); // Stop the default form submission

        // Simple validation check (can be expanded)
        if (form.checkValidity()) {
            alert('Registration Successful! Thank you for registering.');
            // Here you would typically send data to a server using fetch() or XMLHttpRequest
            form.reset(); // Clear the form fields after successful submission
        } else {
            alert('Please fill out all required fields.');
        }
    });
});

// research.js
document.addEventListener('DOMContentLoaded', function() {
    const weldingForm = document.getElementById('weldingForm');

    weldingForm.addEventListener('submit', function(e) {
        e.preventDefault(); // Prevent default form submission

        const formData = new FormData(this);

        // PHP file path
        fetch('register_welding.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            // Show alert with PHP response message
            alert(data.message);

            // Optional: redirect if registration successful
            if (data.success) {
                // window.location.href = 'events.html';
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('An error occurred. Please try again.');
        });
    });
});

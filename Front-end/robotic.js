document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('roboticForm');

    form.addEventListener('submit', function(e) {
        e.preventDefault(); // Prevent default form submission

        const formData = new FormData(this);

        fetch('register_robotic.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            // Show PHP message as alert box
            alert(data.message);

            // Optional: redirect if successful
            if(data.success) {
                // window.location.href = 'events.html';
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('An error occurred. Please try again.');
        });
    });
});

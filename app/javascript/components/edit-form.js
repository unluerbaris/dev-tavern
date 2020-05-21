
const editForm = () => {
  const editBtns = document.querySelectorAll('.edit-btn');
  editBtns.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      const form = event.currentTarget.nextElementSibling;
      form.classList.toggle("edit-form");
      form.classList.toggle("active");
      console.log(form);
    });
  });
}

export { editForm };

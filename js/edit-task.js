// Получить форму редактирования задачи
const taskEditForm = document.querySelector('#task-edit-form');

// Получить блок сообщений об редактировании задачи
let editTaskBlock = document.querySelector('#edit-task-block');

// Событие редактирования задачи
taskEditForm.addEventListener('submit', (event) => {

    event.preventDefault();
    if (document.querySelector('#edit-task-text').value.trim() == '') {
        message(editTaskBlock, 'Заполните текст задачи!', 'failed-message-sending');
    } else {
        const ajax = async () => {
            const response = await fetch('edit-task-text.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: `id=${document.querySelector('#edit-task-text').dataset.id}&tasktext=${document.querySelector('#edit-task-text').value.trim()}`,
            });
            if (!response.ok) {
                throw new Error(response.status);
            } else {
                const data = await response.text();
                if (data == 0) {
                    message(editTaskBlock, 'Извините, произошла ошибка. Пожалуйста, повторите отправку позже!', 'failed-message-sending');
                } else {
                    message(editTaskBlock, 'Задача успешно сохранена!', 'successful-message-sending');
                    setTimeout(() => {
                        document.location.href = "../index.html";
                    }, 2000);
                }
            }
        };
        ajax()
            .catch(error => message(editTaskBlock, error, 'failed-message-sending'));
    }
});

// Функция отображения сообщений
const message = (block, message, addRemoveClass) => {
    block.textContent = message;
    block.style.visibility = 'visible';
    block.classList.add(addRemoveClass);
    setTimeout(() => {
        block.textContent = '';
        block.style.visibility = 'hidden';
        block.classList.remove(addRemoveClass);
    }, 3000);
};
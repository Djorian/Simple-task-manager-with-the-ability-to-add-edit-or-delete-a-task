// После события загрузки всего DOMa, выполнить функцию
document.addEventListener("DOMContentLoaded", () => {
    showTasks();
});

// Получить форму отправки задачи
const taskSubmissionForm = document.querySelector('#task-submission-form');

// Получить блок задач
let tasksContainer = document.querySelector('#tasks-container');

// Получить блок сообщений об отправки задачи
let taskSubmissionFormMessageBlock = document.querySelector('#task-submission-form-message-block');

// Событие отправки задачи
taskSubmissionForm.addEventListener('submit', (event) => {
    event.preventDefault();

    let taskText = document.querySelector('#task-text');

    if (taskText.value.trim() == '') {
        message(taskSubmissionFormMessageBlock, 'Заполните текст задачи!', 'failed-message-sending');
    } else {
        const ajax = async () => {
            const response = await fetch('tasks/add-task.php', {
                method: 'POST',
                body: new FormData(taskSubmissionForm),
            });

            if (!response.ok) {
                throw new Error(response.status);
            } else {
                const data = await response.text();
                if (data == 0) {
                    message(taskSubmissionFormMessageBlock, 'Извините, произошла ошибка. Пожалуйста, повторите отправку позже!', 'failed-message-sending');
                } else {
                    message(taskSubmissionFormMessageBlock, 'Задача успешно загружена!', 'successful-message-sending');
                    showTasks();
                }
            }
        };
        ajax()
            .catch(error => message(taskSubmissionFormMessageBlock, error, 'failed-message-sending'));
        taskText.value = '';
    }
});

// Функция загрузки задач на страницу
const showTasks = () => {
    tasksContainer.innerHTML = '';

    let out = ``;

    const ajax = async () => {
        const response = await fetch('tasks/show-tasks.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: 'show-tasks',
        });

        if (!response.ok) {
            throw new Error(response.status);
        } else {
            const data = await response.json();

            if (data.length == 0) {
                tasksContainer.innerHTML = '<h3 class="m-auto mt-2 text-danger">Задач пока нет.</h3>';
                return false;
            }
            if (data == 0) {
                tasksContainer.innerHTML = '<h3 class="m-auto mt-2 text-danger">Извините, что-то пошло не так.</h3>';
                return false;
            } else {
                for (const value of data) {
                    out += `<li class="list-group-item mt-2 card border border-dark p-3 mt-3" id="${value.id}"><time class="float-right font-italic" datetime="${value.date}">Дата: ${value.date}</time><h6 class="card-title text-left">Задача: ${value.id}</h6><p class="text-left font-italic mt-3">${value.tasktext}</p><button class="btn btn-outline-dark" onclick="deleteTask(${value.id})">Удалить</button><a href="tasks/edit-task.php?id=${value.id}" class="btn btn-outline-dark float-right">Редактировать</a><div class="dropdown-divider" style="border-bottom: 2px dashed rgba(0,0,0,.5) !important;"></div></li>`;
                }
                tasksContainer.innerHTML = out;
            }
        }
    };
    ajax()
        .catch(error => tasksContainer.innerHTML = `<h3 class="m-auto mt-2 text-danger">${error}</h3>`);
};

// Функция удаления задачи по id
const deleteTask = (id) => {
    const ajax = async () => {
        const response = await fetch('tasks/delete-task.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: `delete-task=${id}`,
        });

        if (!response.ok) {
            throw new Error(response.status);
        } else {
            const data = await response.text();

            if (data == 0) {
                message(taskSubmissionFormMessageBlock, 'Извините, произошла ошибка. Пожалуйста, повторите отправку позже!', 'failed-message-sending');
            } else {
                message(taskSubmissionFormMessageBlock, `Задача ${id} успешно удалена!`, 'successful-message-sending');
                showTasks();
            }
        }
    };
    ajax()
        .catch(error => message(taskSubmissionFormMessageBlock, error, 'failed-message-sending'));
};

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
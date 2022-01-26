const loginForm = document.getElementById("login-form");
const loginInput = loginForm.querySelector("input");
const title = document.getElementById("greeting");

const HIDDEN_CLASSNAME = "hidden";
const USERNAME_KEY="name";

function onFormSubmitted(event) {
  event.preventDefault();
  loginForm.classList.add(HIDDEN_CLASSNAME);

  localStorage.setItem(USERNAME_KEY,loginInput.value);

  prepareTitle();
  show(title);
  console.dir(title);
}

function prepareTitle() {
  const username = localStorage.getItem(USERNAME_KEY);
  title.innerText = `Hello, ${username}. `;
}

function checkOnLoad() {
  const savedUsername = localStorage.getItem(USERNAME_KEY);
  if(savedUsername===null) {
    show(loginForm);
    loginForm.addEventListener("submit",onFormSubmitted);
    hide(title);
  }
  else {
    prepareTitle();
    show(title);
    hide(loginForm);
  }
}

function hide(target) {
  target.classList.add(HIDDEN_CLASSNAME);
}

function show(target) {
  target.classList.remove(HIDDEN_CLASSNAME);
}

checkOnLoad();

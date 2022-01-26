const loginForm = document.getElementById("login-form");
const loginInput = loginForm.querySelector("input");
const title = document.getElementById("greeting");

const HIDDEN_CLASSNAME = "hidden";
const USERNAME_KEY="name";

function onFormSubmitted(event) {
  event.preventDefault();
  loginForm.classList.add(HIDDEN_CLASSNAME);
  const userInput = loginInput.value;
  localStorage.setItem(USERNAME_KEY,userInput);

  showTitle(userInput);
  hide(loginForm);
}

function showTitle(username) {
  title.innerText = `Hello, ${username}. `;
  show(title);
}

function showLoginForm() {
  show(loginForm);
  loginForm.addEventListener("submit",onFormSubmitted);
}

function checkOnLoad() {
  const savedUsername = localStorage.getItem(USERNAME_KEY);
  if(savedUsername===null) showLoginForm();
  else showTitle(savedUsername);
}

function hide(target) {target.classList.add(HIDDEN_CLASSNAME);}
function show(target) {target.classList.remove(HIDDEN_CLASSNAME);}

checkOnLoad();

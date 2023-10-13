const baseUrl = "https://be-palembang-24-production.up.railway.app/";

let formRegister = document.getElementById("formpostl");

//const display = document.querySelector("div[name='hasil-query2']")
//display.innerHTML = ""

formRegister.addEventListener("submit", (event) =>{
    event.preventDefault();
    const emailValue = document.querySelector("#email").value;
    const passwordValue = document.querySelector("#password").value;
    
    if (
        !emailValue ||
        !passwordValue
        ) {
            alert("Please Fill in all fields correctly before sending ");
            return;
        }
        
        const submittedData = {
            email: emailValue,
            password: passwordValue
        };
        
        fetch(`${baseUrl}formpostr`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(submittedData)
        })
        .then(response => response.json())
        .then((res) => {
            console.log("test", res)
            alert("Login berhasil");
            window.location.href = "./index.html";
        })
        .catch((error) => {
            alert(`Error Massage: ${error.massage}`);
        })
});
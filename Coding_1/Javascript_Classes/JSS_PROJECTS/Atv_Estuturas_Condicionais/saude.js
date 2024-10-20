let desejo = prompt("Você deseja participar no nosso atendimento? ");
    
if (desejo === "sim") {

let atendimento = prompt("Boa tarde! Você deseja check-up, receitas ou agendamento? ");

if (atendimento === "check-up") {
    console.log("Faça o check-up na página a seguir: ");
} else if (atendimento === "receitas") {
    console.log("Sua receita poderá ser baixada no PDF adiante: ");
} else if (atendimento === "agendamento") {
    console.log("Seu contato será encaminhado para agendamento: ");
}}
else {
    console.log("Obrigado!");
}

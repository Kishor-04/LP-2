// STATIC JSON DATA
let participants = {
  rajasthan: [
    { name: "Arjun Sharma", email: "arjun.sharma@gmail.com", mobile: "9876543210" },
    { name: "Divya Reddy", email: "divya.reddy@gmail.com", mobile: "9123456780" },
    { name: "Vikram Singh", email: "vikram.singh@gmail.com", mobile: "9988776655" },
  ],
  kerala: [
    { name: "Lakshmi Nair", email: "lakshmi.nair@gmail.com", mobile: "9876501234" },
    { name: "Arun Kumar", email: "arun.kumar@gmail.com", mobile: "9123498765" },
    { name: "Priya Menon", email: "priya.menon@gmail.com", mobile: "9988712345" },
  ],
  himachal: [
    { name: "Rohan Verma", email: "rohan.verma@gmail.com", mobile: "9090909090" },
    { name: "Ananya Kapoor", email: "ananya.kapoor@gmail.com", mobile: "9191919191" },
    { name: "Kabir Malhotra", email: "kabir.malhotra@gmail.com", mobile: "9292929292" },
  ],
};

// FUNCTION TO SHOW PARTICIPANTS
function showParticipants() {
  let eventKey = document.getElementById("eventSelect").value;
  let table = document.getElementById("participantTable");
  let tbody = document.getElementById("tableBody");

  if (eventKey === "") {
    table.style.display = "none";
    tbody.innerHTML = "";
    return;
  }

  let selected = participants[eventKey];

  tbody.innerHTML = ""; // Clear previous rows

  selected.forEach((person) => {
    let row = `
            <tr>
                <td>${person.name}</td>
                <td>${person.email}</td>
                <td>${person.mobile}</td>
            </tr>
        `;
    tbody.innerHTML += row;
  });

  table.style.display = "table"; // Show table
}

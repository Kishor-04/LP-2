// EVENT ARRAY
let events = [
  {
    name: "Golden Triangle Tour",
    date: "15 Dec 2025",
    desc: "Explore Delhi, Agra, and Jaipur. Visit the Taj Mahal, Amber Fort, and India Gate. 6 days / 5 nights package.",
  },
  {
    name: "Kerala Backwaters Experience",
    date: "22 Dec 2025",
    desc: "Discover the serene backwaters of Alleppey and Kumarakom. Includes houseboat stay and Ayurvedic spa. 5 days / 4 nights.",
  },
  {
    name: "Goa Beach Holiday",
    date: "28 Dec 2025",
    desc: "Relax on pristine beaches of North and South Goa. Water sports, beach shacks, and nightlife included. 4 days / 3 nights.",
  },
  {
    name: "Himalayan Adventure - Manali",
    date: "10 Jan 2026",
    desc: "Trekking, paragliding, and snow activities in Manali and Solang Valley. Adventure and nature combined. 7 days / 6 nights.",
  },
  {
    name: "Rajasthan Heritage Tour",
    date: "20 Jan 2026",
    desc: "Experience royal palaces and desert safari in Udaipur, Jodhpur, and Jaisalmer. Cultural immersion. 8 days / 7 nights.",
  },
];

// SHOW/HIDE ADD EVENT FORM
function toggleForm() {
  let form = document.getElementById("addForm");

  if (form.style.display === "none") {
    form.style.display = "block";
  } else {
    form.style.display = "none";
  }
}

// DISPLAY EVENTS
function displayEvents() {
  let container = document.getElementById("eventContainer");
  container.innerHTML = "";

  events.forEach((ev, index) => {
    let card = document.createElement("div");
    card.className = "event-card";

    card.innerHTML = `
      <h3>${ev.name}</h3>
      <p><strong>Date:</strong> ${ev.date}</p>
      <p>${ev.desc}</p>

      <button class="btn update-btn" onclick="updateEvent(${index})">Update</button>
      <button class="btn delete-btn" onclick="deleteEvent(${index})">Delete</button>
    `;

    container.appendChild(card);
  });
}

// ADD EVENT
function addEvent() {
  let name = document.getElementById("eventName").value;
  let date = document.getElementById("eventDate").value;
  let desc = document.getElementById("eventDesc").value;

  if (name === "" || date === "" || desc === "") {
    alert("Please fill all fields");
    return;
  }

  events.push({ name, date, desc });

  displayEvents();

  // Clear fields + hide form
  document.getElementById("eventName").value = "";
  document.getElementById("eventDate").value = "";
  document.getElementById("eventDesc").value = "";
  toggleForm();
}

// DELETE EVENT
function deleteEvent(index) {
  if (confirm("Do you want to delete this event?")) {
    events.splice(index, 1);
    displayEvents();
  }
}

// UPDATE EVENT
function updateEvent(index) {
  let newName = prompt("Enter new event name:", events[index].name);
  let newDate = prompt("Enter new event date:", events[index].date);
  let newDesc = prompt("Enter new description:", events[index].desc);

  if (newName && newDate && newDesc) {
    events[index].name = newName;
    events[index].date = newDate;
    events[index].desc = newDesc;
    displayEvents();
  }
}

// Load events on startup
displayEvents();

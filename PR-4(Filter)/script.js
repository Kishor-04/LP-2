// Array of event objects
let events = [
  {
    name: "Golden Triangle Tour",
    date: "15 Dec 2025",
    desc: "Explore Delhi, Agra, and Jaipur with Taj Mahal visit, Red Fort, and Amber Palace.",
  },
  {
    name: "Kerala Backwaters",
    date: "05 Jan 2026",
    desc: "Houseboat stay, tropical beaches, and scenic hill stations in God's Own Country.",
  },
  {
    name: "Goa Beach Holiday",
    date: "20 Jan 2026",
    desc: "Sun, sand, and sea with water sports, beach parties, and Portuguese heritage sites.",
  },
  {
    name: "Himalayan Adventure",
    date: "14 Feb 2026",
    desc: "Manali and Shimla tour with snow activities, mountain treks, and valley views.",
  },
];

// Display events
function displayEvents(list) {
  let container = document.getElementById("eventContainer");
  container.innerHTML = "";

  list.forEach((ev) => {
    let div = document.createElement("div");
    div.className = "event";

    div.innerHTML = `
      <h3>${ev.name}</h3>
      <p><strong>Date:</strong> ${ev.date}</p>
      <p>${ev.desc}</p>
    `;

    container.appendChild(div);
  });
}

// Initial load
displayEvents(events);

// Search filter with message only
function filterEvents() {
  let keyword = document.getElementById("searchBox").value.toLowerCase();
  let filtered = events.filter((e) => e.name.toLowerCase().includes(keyword));

  if (filtered.length === 0) {
    document.getElementById("noResult").innerHTML = "❗ No events found";
  } else {
    document.getElementById("noResult").innerHTML = "";
  }

  displayEvents(filtered);
}

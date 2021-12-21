import firebase from "firebase";
const firebaseConfig = {
  apiKey: "AIzaSyAjqvhrulxPqfilZekwGZ5lkFsDUPA9Cg0",
  authDomain: "linkedin-clone-f51ba.firebaseapp.com",
  projectId: "linkedin-clone-f51ba",
  storageBucket: "linkedin-clone-f51ba.appspot.com",
  messagingSenderId: "277915838559",
  appId: "1:277915838559:web:e8e4286721a5115a2293ea",
};

const firebaseApp = firebase.initializeApp(firebaseConfig);
const db = firebase.firestore();
const auth = firebase.auth();

export { db, auth };

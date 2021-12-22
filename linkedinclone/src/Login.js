import React, { useState } from "react";
import "./Login.css";
import linkedin from "./LinkedInlogo.jpg";
import { auth } from "./firebase";
import { useDispatch } from "react-redux";
import { login } from "./features/userSlice";

function Login() {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [picurl, setPicurl] = useState("");
  const dispath = useDispatch();
  const register = () => {
    if (!name) {
      return alert("Please Enter Full Name");
    }
    auth
      .createUserWithEmailAndPassword(email, password)
      .then((userAuth) => {
        userAuth.user
          .updateProfile({
            displayName: name,
            photoURL: picurl,
          })
          .then(() => {
            dispath(
              login({
                email: userAuth.user.email,
                uid: userAuth.user.uid,
                displayName: name,
                photoURL: picurl,
              })
            );
          });
      })
      .catch((error) => console.log(error));
  };
  const loginToApp = (e) => {
    e.preventDefault();
    auth
      .signInWithEmailAndPassword(email, password)
      .then((userAuth) => {
        dispath(
          login({
            email: userAuth.user.email,
            uid: userAuth.user.uid,
            displayName: userAuth.user.displayName,
            photoURL: userAuth.user.photoURL,
          })
        );
      })
      .catch((err) => console.log(err));
  };
  return (
    <div className="login">
      <img src={linkedin} alt="LinkedIn Logo" />
      <form>
        <input
          placeholder="Full Name"
          value={name}
          type="text"
          onChange={(e) => setName(e.target.value)}
        />
        <input
          placeholder="Profile Pic URL (optional)"
          value={picurl}
          type="text"
          onChange={(e) => setPicurl(e.target.value)}
        />
        <input
          placeholder="Email"
          value={email}
          type="email"
          onChange={(e) => setEmail(e.target.value)}
        />
        <input
          placeholder="Password"
          value={password}
          type="password"
          onChange={(e) => setPassword(e.target.value)}
        />
        <button type="submit" onClick={loginToApp}>
          Sign in
        </button>
      </form>
      <p>
        Not a Member ?{"  "}
        <span className="login__register" onClick={register}>
          Register Now
        </span>
      </p>
    </div>
  );
}

export default Login;

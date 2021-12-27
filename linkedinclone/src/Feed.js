import React from "react";
import "./Feed.css";
import CreateIcon from "@material-ui/icons/Create";
import ImageIcon from "@material-ui/icons/Image";
import MusicVideoIcon from "@material-ui/icons/MusicVideo";
import EventNoteIcon from "@material-ui/icons/EventNote";
import AssignmentIcon from "@material-ui/icons/Assignment";
import InputOptions from "./InputOptions";
import { useState, useEffect } from "react";
import Post from "./Post";
import { db } from "./firebase";
import firebase from "firebase";
import FlipMove from "react-flip-move";
import { selectUser } from "./features/userSlice";
import { useSelector } from "react-redux";
import { Avatar } from "@material-ui/core";

function Feed() {
  const [input, setInput] = useState("");
  const [posts, setPosts] = useState([]);
  const user = useSelector(selectUser);

  useEffect(() => {
    db.collection("posts")
      .orderBy("timestamp", "desc")
      .onSnapshot((snapshot) => {
        setPosts(
          snapshot.docs.map((doc) => ({
            id: doc.id,
            data: doc.data(),
          }))
        );
      });
  }, []);
  console.log(posts);

  const sendPost = (e) => {
    e.preventDefault();
    db.collection("posts").add({
      name: "Rahul Gupta",
      description: "Software Engineer at Larsen & Toubro Infotech",
      message: input,
      photoUrl:
        "https://media-exp1.licdn.com/dms/image/C4E03AQELUIEu7jFNEw/profile-displayphoto-shrink_100_100/0/1603224176601?e=1645056000&v=beta&t=zsvFPufd4i0fvaM2OXUdclytncYaoOeFLgwHzhvrP7g",
      timestamp: firebase.firestore.FieldValue.serverTimestamp(),
    });
    setInput("");
    // setPosts([...posts])
  };
  return (
    <div className="feed">
      <div className="feed__inputContainer">
        <div className="feed__avatarInput">
          <Avatar
            className="feed__avatar"
            src={user.photoURL}
            style={{ color: "black" }}
          >
            {user.email[0].toUpperCase()}
          </Avatar>
          <div className="feed__input">
            {/* <CreateIcon /> */}
            <form>
              <input
                type="text"
                placeholder="Start a post"
                value={input}
                onChange={(e) => setInput(e.target.value)}
              />
              <button onClick={sendPost} type="submit">
                Send
              </button>
            </form>
          </div>
        </div>
        <div className="feed__inputOptions">
          <InputOptions Icon={ImageIcon} title="Photo" color="#70B5F9" />
          <InputOptions Icon={MusicVideoIcon} title="Video" color="#7FC15E" />
          <InputOptions Icon={EventNoteIcon} title="Event" color="#E7A33E" />
          <InputOptions
            Icon={AssignmentIcon}
            title="Write article"
            color="#FC9295"
          />
        </div>
      </div>
      <FlipMove>
        {posts.map(({ id, data: { name, message, description, photoUrl } }) => (
          <Post
            key={id}
            name={name}
            message={message}
            description={description}
            photoUrl={photoUrl}
          />
        ))}
      </FlipMove>
      {/* <Post
        name="Rahul Gupta"
        message="First Post"
        description="Software Engineer at Larsen & Toubro Infotech"
        photoUrl="https://media-exp1.licdn.com/dms/image/C4E03AQELUIEu7jFNEw/profile-displayphoto-shrink_100_100/0/1603224176601?e=1645056000&v=beta&t=zsvFPufd4i0fvaM2OXUdclytncYaoOeFLgwHzhvrP7g"
      /> */}
    </div>
  );
}

export default Feed;

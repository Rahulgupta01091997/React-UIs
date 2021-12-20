import React from "react";
import "./Feed.css";
import CreateIcon from "@material-ui/icons/Create";
import ImageIcon from "@material-ui/icons/Image";
import MusicVideoIcon from "@material-ui/icons/MusicVideo";
import EventNoteIcon from "@material-ui/icons/EventNote";
import AssignmentIcon from "@material-ui/icons/Assignment";
import InputOptions from "./InputOptions";
import { useState } from "react";
import Post from "./Post";

function Feed() {
  const [posts, setPosts] = useState([]);

  const sendPost = (e) => {
    e.preventDefault();
    console.log(e);
    // setPosts([...posts])
  };
  return (
    <div className="feed">
      <div className="feed__inputContainer">
        <div className="feed__input">
          <CreateIcon />
          <form>
            <input type="text" />
            <button onClick={sendPost} type="submit">
              Send
            </button>
          </form>
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

      {posts.map((post) => {
        <Post />;
      })}

      <Post
        name="Rahul Gupta"
        message="First Post"
        description="Software Engineer at Larsen & Toubro Infotech"
        photoUrl="https://media-exp1.licdn.com/dms/image/C4E03AQELUIEu7jFNEw/profile-displayphoto-shrink_100_100/0/1603224176601?e=1645056000&v=beta&t=zsvFPufd4i0fvaM2OXUdclytncYaoOeFLgwHzhvrP7g"
      />
    </div>
  );
}

export default Feed;

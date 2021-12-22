import { Avatar } from "@material-ui/core";
import React from "react";
import { useSelector } from "react-redux";
import "./Sidebar.css";
import splashimg from "./splashimg.jpg";
import { selectUser } from "./features/userSlice";

function Sidebar() {
  const user = useSelector(selectUser);
  const recentItem = (topic) => {
    return (
      <div className="sidebar__recentItems">
        <span className="sidebar__hash">#</span>
        <p>{topic}</p>
      </div>
    );
  };

  return (
    <div className="sidebar">
      <div className="sidebar__top">
        <img src={splashimg} alt="" />
        <Avatar
          className="sidebar__avatar"
          src={user.photoURL}
          style={{ color: "black" }}
        >
          {user.email[0].toUpperCase()}
        </Avatar>
        <div className="sidebar__details">
          <h2>{user.displayName}</h2>
          <h4>Software Engineer at Larsen & Toubro Infotech</h4>
        </div>
      </div>
      <div className="sidebar__stats">
        <div className="sidebar__stat">
          <p>Who viewed your profile</p>
          <p className="sidebar__statNumber">39</p>
        </div>
        <div className="sidebar__stat">
          <p>Connections</p>
          <p className="sidebar__statNumber">328</p>
        </div>
      </div>
      <div className="sidebar__bottom">
        <p>Recent</p>
        {recentItem("reactjs")}
        {recentItem("frontend dev")}
        {recentItem("nodejs dev")}
        {recentItem("software engineering")}
      </div>
    </div>
  );
}

export default Sidebar;

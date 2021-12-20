import { Avatar } from "@material-ui/core";
import React from "react";
import "./Sidebar.css";
import splashimg from "./splashimg.jpg";

function Sidebar() {
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
          src="https://media-exp1.licdn.com/dms/image/C4E03AQELUIEu7jFNEw/profile-displayphoto-shrink_100_100/0/1603224176601?e=1645056000&v=beta&t=zsvFPufd4i0fvaM2OXUdclytncYaoOeFLgwHzhvrP7g"
        />
        <div className="sidebar__details">
          <h2>Rahul Gupta</h2>
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

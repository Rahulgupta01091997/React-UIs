import React from "react";
import "./Header.css";
import SearchIcon from "@material-ui/icons/Search";
import linkedin from "./linkedin.png";
import HeaderOptions from "./HeaderOptions";
import HomeIcon from "@material-ui/icons/Home";
import SupervisorAccountIcon from "@material-ui/icons/SupervisorAccount";
import BusinessCenterIcon from "@material-ui/icons/BusinessCenter";
import ChatIcon from "@material-ui/icons/Chat";
import NotificationsIcon from "@material-ui/icons/Notifications";

function Header() {
  return (
    <div className="header">
      <div className="header__left">
        <img src={linkedin} alt="" />
        <div className="header__search">
          <SearchIcon />
          <input type="text" />
        </div>
      </div>
      <div className="header__right">
        <HeaderOptions Icon={HomeIcon} title="Home" />
        <HeaderOptions Icon={SupervisorAccountIcon} title="My Network" />
        <HeaderOptions Icon={BusinessCenterIcon} title="Jobs" />
        <HeaderOptions Icon={ChatIcon} title="Messaging" />
        <HeaderOptions Icon={NotificationsIcon} title="Notifications" />
        <HeaderOptions
          avatar="https://media-exp1.licdn.com/dms/image/C4E03AQELUIEu7jFNEw/profile-displayphoto-shrink_100_100/0/1603224176601?e=1645056000&v=beta&t=zsvFPufd4i0fvaM2OXUdclytncYaoOeFLgwHzhvrP7g"
          title="Me"
        />
      </div>
    </div>
  );
}

export default Header;

import { Avatar } from "@material-ui/core";
import React, { useState } from "react";
import "./HeaderOptions.css";
import { selectUser } from "./features/userSlice";
import { useSelector } from "react-redux";
import { useDispatch } from "react-redux";
import { logout } from "./features/userSlice";
import { auth } from "./firebase";

function HeaderOptions({ avatar, Icon, title, onClick }) {
  const user = useSelector(selectUser);
  const [issubMenu, setsubMenu] = useState(false);
  const changeSubMenu = () => {
    title === "Me" && setsubMenu(issubMenu === false ? true : false);
  };

  const subMenuItems = (title, subTitle) => (
    <>
      {title !== "" && <h3 className="subMenuItem__title">{title}</h3>}
      {subTitle !== "" && <h4 className="subMenuItem__subTitle">{subTitle}</h4>}
    </>
  );

  const dispatch = useDispatch();
  const logoutOfApp = () => {
    dispatch(logout());
    auth.signOut();
    setsubMenu(false);
  };

  return (
    <>
      <div className="headerOptions" onClick={changeSubMenu}>
        {Icon && <Icon className="headerOption__icon" />}
        {avatar && (
          <Avatar
            className="headerOption__icon"
            src={user?.photoURL}
            onClick={onClick}
          >
            {user?.email[0].toUpperCase()}
          </Avatar>
        )}
        <h3 className="headerOption__title">{title}</h3>
      </div>
      {title === "Me" && (
        <ul
          className="headerOption__dropdown"
          style={{ display: issubMenu ? "block" : "none" }}
        >
          <li className="dropdown__item">
            <div className="dropdown__item1Data">
              {avatar && (
                <Avatar
                  className="dropdown__avatar"
                  src={user?.photoURL}
                  onClick={onClick}
                >
                  {user?.email[0].toUpperCase()}
                </Avatar>
              )}
              <div className="item1__details">
                <h3>{user?.displayName}</h3>
                <h4>Software Engineer at Larsen & Toubro Infotech</h4>
              </div>
            </div>
            <button className="dropdown__item1Button">View Profile</button>
          </li>
          <li className="dropdown__item">
            {subMenuItems("Account", "")}
            {subMenuItems("", "Settings & Privacy")}
            {subMenuItems("", "Help")}
            {subMenuItems("", "Language")}
          </li>
          <li className="dropdown__item">
            {subMenuItems("Manage", "")}
            {subMenuItems("", "Posts & Activity")}
            {subMenuItems("", "Job Posting Account")}
          </li>
          <h4 className="dropdown__signOut" onClick={logoutOfApp}>
            Sign Out
          </h4>
        </ul>
      )}
    </>
  );
}

export default HeaderOptions;

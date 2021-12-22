import { Avatar } from "@material-ui/core";
import React from "react";
import "./HeaderOptions.css";
import { selectUser } from "./features/userSlice";
import { useSelector } from "react-redux";

function HeaderOptions({ avatar, Icon, title, onClick }) {
  const user = useSelector(selectUser);
  return (
    <div className="headerOptions">
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
  );
}

export default HeaderOptions;

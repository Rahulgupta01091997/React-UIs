import React from "react";
import "./Sidebar.css";
import SidebarOptions from "./SidebarOptions";
import HomeOutlinedIcon from "@material-ui/icons/HomeOutlined";
import SearchOutlinedIcon from "@material-ui/icons/SearchOutlined";
import LibraryMusicOutlinedIcon from "@material-ui/icons/LibraryMusicOutlined";
import { UserDataLayerValue } from "./DataLayer";

function Sidebar() {
  const [{ playlists }, dispatch] = UserDataLayerValue();
  console.log(playlists);
  return (
    <div className="sidebar">
      <img
        src="https://getheavy.com/wp-content/uploads/2019/12/spotify2019-830x350.jpg"
        alt="Spotify Logo"
        className="sidebar__logo"
      />
      <SidebarOptions title="Home" Icon={HomeOutlinedIcon} />
      <SidebarOptions title="Search" Icon={SearchOutlinedIcon} />
      <SidebarOptions title="Your Library" Icon={LibraryMusicOutlinedIcon} />
      <br />
      <strong className="sidebar__title">PLAYLISTS</strong>
      <hr />
      {playlists?.items?.map((playlist) => {
        <SidebarOptions title={playlist.name} />;
      })}
    </div>
  );
}

export default Sidebar;

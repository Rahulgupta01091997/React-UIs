import { Avatar } from "@material-ui/core";
import React from "react";
import InputOptions from "./InputOptions";
import ThumbUpOutlinedIcon from "@material-ui/icons/ThumbUpOutlined";
import ModeCommentOutlinedIcon from "@material-ui/icons/ModeCommentOutlined";
import ShareIcon from "@material-ui/icons/Share";
import SendIcon from "@material-ui/icons/Send";
import "./Post.css";

function Post({ name, description, message, photoUrl }) {
  return (
    <div className="post">
      <div className="post__header">
        <Avatar src={photoUrl} />
        <div className="post__info">
          <h2>{name}</h2>
          <p>{description}</p>
        </div>
      </div>
      <div className="post__body">
        <p>{message}</p>
      </div>
      <div className="post__buttons">
        <InputOptions
          Icon={ThumbUpOutlinedIcon}
          title="Like"
          color="#00000099"
        />
        <InputOptions
          Icon={ModeCommentOutlinedIcon}
          title="Like"
          color="#00000099"
        />
        <InputOptions Icon={ShareIcon} title="Share" color="#00000099" />
        <InputOptions Icon={SendIcon} title="Send" color="#00000099" />
      </div>
    </div>
  );
}

export default Post;

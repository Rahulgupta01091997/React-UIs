import React from "react";
import "./Widgets.css";
import InfoIcon from "@material-ui/icons/Info";
import FiberManualRecordOutlinedIcon from "@material-ui/icons/FiberManualRecordOutlined";

function Widgets() {
  const newsArticle = (heading, subtitle) => (
    <div className="widgets__article">
      <div className="widgets__articleLeft">
        <FiberManualRecordOutlinedIcon />
      </div>
      <div className="widgets__articleRight">
        <h4>{heading}</h4>
        <p>{subtitle}</p>
      </div>
    </div>
  );

  return (
    <div className="widgets">
      <div className="widgets__header">
        <h2>LinkedIn News</h2>
        <InfoIcon />
      </div>
      {newsArticle("E-tailers to sharpen Bharat focus", "9d ago • 512 readers")}
      {newsArticle(
        "How tech hiring will evolve in 2022",
        "2d ago • 2495 readers"
      )}
      {newsArticle("More crore-plus packages at IITs", "3d ago • 3950 readers")}
      {newsArticle("Hiring mode on at IT firms", "5d ago • 11,343 readers")}
      {newsArticle(
        "What not to say in a job interview",
        "2d ago • 4827 readers"
      )}
    </div>
  );
}

export default Widgets;

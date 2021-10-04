export const initialState = {
  user: null,
  playlists: [],
  spotify: null,
  discover_weekly: null,
  top_artists: null,
  playing: false,
  item: null,
  // token: null,
  //token for cell number login
  // token:
  //   "BQAxYPgB-qNrtaAJKxwxWIYWpNVWtUpwKKoC31ChxalwqkQE-VNCkHT3AnhSToQ1j4pjNDoZ33nScZY3_FrMxKmS_arxBMPEmirRJhKDutOdiLycfWjjlU_ckWyZW32bAO50I9s3C1DlH0H4F6jJY8ozmAzUtmPxhJdaIWaD09hwbOqLfDg3",
  //token for email login
  // token:
  //   "BQDXrEnlj4ugpC6z21VMuIzyanzMiH2Ana6lzYrsaOQTVLk-dzEn4zjGoE0W4MgNoEHB-36zFFrCOAoAzTbOpr6EPJDpZStrOkrhOfdM9MYqmg2QEuBkqqX0XNLvTizYTA4XNp7PogwEO_8AYktolxs_7PHG-Pp7I933zVV5YN6qSoJD",
};

const reducer = (state, action) => {
  console.log(action);
  switch (action.type) {
    case "SET_USER":
      return {
        ...state,
        user: action.user,
      };
    case "SET_TOKEN":
      return {
        ...state,
        token: action.token,
      };
    case "SET_PLAYLISTS":
      return {
        ...state,
        playlists: action.playlists,
      };
    case "SET_DISCOVER_WEEKLY":
      return {
        ...state,
        discover_weekly: action.discover_weekly,
      };
    case "SET_TOP_ARTISTS":
      return {
        ...state,
        top_artists: action.top_artists,
      };
    case "SET_SPOTIFY":
      return {
        ...state,
        spotify: action.spotify,
      };
    case "SET_PLAYING":
      return {
        ...state,
        playing: action.playing,
      };
    case "SET_ITEM":
      return {
        ...state,
        item: action.item,
      };
    default:
      return state;
  }
};

export default reducer;

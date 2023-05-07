export const getImagePath = (genreCode: string): string => {
  if (genreCode === "GENRE_001") {
    return "/images/menus/frontend.svg";
  } else if (genreCode === "GENRE_002") {
    return "/images/menus/backend.svg";
  } else if (genreCode === "GENRE_003") {
    return "/images/menus/database.svg";
  } else if (genreCode === "GENRE_004") {
    return "/images/menus/infrastructure.svg";
  } else {
    return "";
  }
};

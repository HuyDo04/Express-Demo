const sidebarItems = [
  {
    title: "User",
    icon: "fa-user",
    path: "/users",
  },
  {
    title: "Analytics",
    icon: "fa-chart-bar",
    path: "/analytics",
  },
  {
    title: "Settings",
    icon: "fa-cog",
    path: "/settings",
  },
  {
    title: "Posts",
    icon: "fa-file-alt",
    path: "/posts",
  },
  {
    title: "Comments",
    icon: "fa-comments",
    path: "/comments",
  },
  {
    title: "Topics",
    icon: "fa-bookmark",
    path: "/topics",
  },
  {
    title: "AcountSettings",
    icon: "fa-cog",
    path: "/accountSettings",
  },
];

function handleSidebar(req, res, next) {
  res.locals.path = req.path;
  res.locals.sidebarItems = sidebarItems;
  next();
}

module.exports = handleSidebar;

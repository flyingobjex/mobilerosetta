export function parseJsonText(text) {
  let collection = JSON.parse(text);
  return {
    "title":collection.title || "none",
    "entries": collection.entry_list.map(e => {
      if (e.author){
        e.author.id = e.author.author_id || 0;
      }
      return e
    })
  };
}


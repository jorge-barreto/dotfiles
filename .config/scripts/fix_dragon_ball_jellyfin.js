// select the ul containing the episodes you want to rename
const episodes = $0.children;
const headers = {
  accept: "application/json",
  "accept-language": "en-US,en;q=0.9,es;q=0.8",
  "x-emby-authorization":
    'MediaBrowser Client="Jellyfin Web", Device="Chrome", DeviceId="TW96aWxsYS81LjAgKFgxMTsgTGludXggeDg2XzY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvOTIuMC40NTE1LjEzMSBTYWZhcmkvNTM3LjM2fDE2Mjk1NjQyOTQ2ODU1", Version="10.7.2", Token="4035594ae760448288d6805b982a9f8a"',
};
const fetchOptions = ({ body, method }) => ({
  headers,
  referrer: "http://172.17.0.1:8096/web/index.html",
  referrerPolicy: "strict-origin-when-cross-origin",
  body,
  method,
  mode: "cors",
  credentials: "omit",
});

async function fixDragonball() {
  for (let i = 0; i < episodes.length; i++) {
    const Id = episodes[i].getAttribute("id");

    const { Path, DateCreated } = await fetch(
      `http://172.17.0.1:8096/Users/69563815e3b84456a6d4ab360103ba86/Items/${Id}`,
      fetchOptions({
        body: null,
        method: "GET",
      })
    ).then((data) => data.json());

    const Name = Path.slice(63);
    const IndexNumber = /(\d+)/.exec(/Episode (\d+)/.exec(Name)[0])[0];

    const body = {
      Id,
      Name: Name.slice(9 + IndexNumber.length, -4), // this one truncates Episode # and file ending
      // Name: Name.slice(0, -4), // this one truncates file ending
      IndexNumber,
      OriginalTitle: "",
      ForcedSortName: Name.slice(0, 8 + IndexNumber.length),
      CommunityRating: "",
      CriticRating: "",
      AirsBeforeSeasonNumber: "",
      AirsAfterSeasonNumber: "",
      AirsBeforeEpisodeNumber: "",
      ParentIndexNumber: "1",
      DisplayOrder: "",
      Album: "",
      AlbumArtists: [],
      ArtistItems: [],
      Overview: "",
      Status: "",
      AirDays: [],
      AirTime: "",
      Genres: [],
      Tags: [],
      Studios: [],
      PremiereDate: null,
      DateCreated,
      EndDate: null,
      ProductionYear: "",
      AspectRatio: "",
      Video3DFormat: "",
      OfficialRating: "",
      CustomRating: "",
      People: [],
      LockData: false,
      LockedFields: [],
      ProviderIds: { Imdb: "", Tmdb: "", TmdbCollection: "" },
      PreferredMetadataLanguage: "",
      PreferredMetadataCountryCode: "",
      Taglines: [],
    };

    await fetch(`http://172.17.0.1:8096/Items/${Id}`, {
      headers: {
        accept: "*/*",
        "accept-language": "en-US,en;q=0.9,es;q=0.8",
        "content-type": "application/json",
        "x-emby-authorization":
          'MediaBrowser Client="Jellyfin Web", Device="Chrome", DeviceId="TW96aWxsYS81LjAgKFgxMTsgTGludXggeDg2XzY0KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1MLCBsaWtlIEdlY2tvKSBDaHJvbWUvOTIuMC40NTE1LjEzMSBTYWZhcmkvNTM3LjM2fDE2Mjk1NjQyOTQ2ODU1", Version="10.7.2", Token="4035594ae760448288d6805b982a9f8a"',
      },
      referrer: "http://172.17.0.1:8096/web/index.html",
      referrerPolicy: "strict-origin-when-cross-origin",
      body: JSON.stringify(body),
      method: "POST",
      mode: "cors",
      credentials: "omit",
    });
  }
}

fixDragonball().then(() => console.log("done"));

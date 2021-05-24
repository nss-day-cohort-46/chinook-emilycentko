SELECT Playlist.Name, COUNT(PlaylistTrack.TrackId) AS NumberOfTracks
FROM Playlist
LEFT JOIN PlaylistTrack
ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Playlist.PlaylistId
.class public final Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;
.super Lcom/google/firebase/appindexing/builders/IndexableBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/appindexing/builders/IndexableBuilder",
        "<",
        "Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "MusicAlbum"

    invoke-direct {p0, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setByArtist(Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;)Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;
    .registers 5
    .param p1    # Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "byArtist"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;

    return-object v0
.end method

.method public setNumTracks(I)Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;
    .registers 8

    const-string v0, "numTracks"

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    int-to-long v4, p1

    aput-wide v4, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;->put(Ljava/lang/String;[J)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;

    return-object v0
.end method

.method public varargs setTrack([Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;)Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;
    .registers 3
    .param p1    # [Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "track"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;

    return-object v0
.end method

.class public Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader;
.super Ljava/lang/Object;
.source "NetworkDeniedImageDownloader.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader$1;
    }
.end annotation


# instance fields
.field private final wrappedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V
    .registers 2
    .param p1, "wrappedDownloader"    # Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader;->wrappedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 34
    return-void
.end method


# virtual methods
.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 5
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader$1;->$SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 43
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/download/NetworkDeniedImageDownloader;->wrappedDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-interface {v0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 41
    :pswitch_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 38
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

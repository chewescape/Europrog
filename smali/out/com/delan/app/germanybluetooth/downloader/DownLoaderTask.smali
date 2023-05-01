.class public Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;
.super Landroid/os/AsyncTask;
.source "DownLoaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask$ProgressReportingOutputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mOutputStream:Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask$ProgressReportingOutputStream;

.field private mUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    const-string v2, "DownLoaderTask"

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->TAG:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mContext:Landroid/content/Context;

    .line 41
    :try_start_9
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mUrl:Ljava/net/URL;

    .line 42
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mFile:Ljava/io/File;

    .line 44
    const-string v2, "DownLoaderTask"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mUrl.getFile()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5e
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_5e} :catch_5f

    .line 49
    .end local v1    # "fileName":Ljava/lang/String;
    :goto_5e
    return-void

    .line 45
    :catch_5f
    move-exception v0

    .line 46
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_5e
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 11
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    const/16 v6, 0x2000

    .line 103
    new-array v0, v6, [B

    .line 104
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 105
    .local v3, "in":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, p2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 106
    .local v5, "out":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v4, 0x0

    .line 108
    .local v4, "n":I
    :goto_10
    const/4 v6, 0x0

    const/16 v7, 0x2000

    :try_start_13
    invoke-virtual {v3, v0, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_20

    .line 109
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 110
    add-int/2addr v1, v4

    goto :goto_10

    .line 112
    :cond_20
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_23} :catch_34
    .catchall {:try_start_13 .. :try_end_23} :catchall_49

    .line 117
    :try_start_23
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_2a

    .line 122
    :goto_26
    :try_start_26
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2f

    .line 127
    :goto_29
    return v1

    .line 118
    :catch_2a
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 123
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2f
    move-exception v2

    .line 124
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 113
    .end local v2    # "e":Ljava/io/IOException;
    :catch_34
    move-exception v2

    .line 114
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_35
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_49

    .line 117
    :try_start_38
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_44

    .line 122
    :goto_3b
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_29

    .line 123
    :catch_3f
    move-exception v2

    .line 124
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 118
    :catch_44
    move-exception v2

    .line 119
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 116
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_49
    move-exception v6

    .line 117
    :try_start_4a
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_51

    .line 122
    :goto_4d
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_56

    .line 125
    :goto_50
    throw v6

    .line 118
    :catch_51
    move-exception v2

    .line 119
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    .line 123
    .end local v2    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v2

    .line 124
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50
.end method

.method private download()J
    .registers 10

    .prologue
    const-wide/16 v4, -0x1

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "bytesCopied":I
    :try_start_3
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_5c

    move-result-object v1

    .line 71
    .local v1, "connection":Ljava/net/URLConnection;
    :try_start_9
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_c} :catch_50
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_63

    .line 82
    :try_start_c
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .line 83
    .local v3, "length":I
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6f

    int-to-long v4, v3

    iget-object v6, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_6f

    .line 84
    const-string v4, "DownLoaderTask"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already exits!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const-wide/16 v4, 0x0

    .line 99
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v3    # "length":I
    :goto_4f
    return-wide v4

    .line 72
    .restart local v1    # "connection":Ljava/net/URLConnection;
    :catch_50
    move-exception v2

    .line 73
    .local v2, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 74
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mContext:Landroid/content/Context;

    const-string v7, "Connection network time out"

    invoke-static {v6, v7}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_5b} :catch_5c

    goto :goto_4f

    .line 95
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_5c
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    const/4 v0, -0x1

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    :goto_61
    int-to-long v4, v0

    goto :goto_4f

    .line 76
    .restart local v1    # "connection":Ljava/net/URLConnection;
    :catch_63
    move-exception v2

    .line 77
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_64
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mContext:Landroid/content/Context;

    const-string v7, "Connection network time out"

    invoke-static {v6, v7}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4f

    .line 87
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "length":I
    :cond_6f
    new-instance v4, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask$ProgressReportingOutputStream;

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mFile:Ljava/io/File;

    invoke-direct {v4, p0, v5}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask$ProgressReportingOutputStream;-><init>(Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;Ljava/io/File;)V

    iput-object v4, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mOutputStream:Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask$ProgressReportingOutputStream;

    .line 88
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mOutputStream:Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask$ProgressReportingOutputStream;

    invoke-direct {p0, v4, v5}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    .line 90
    if-eq v0, v3, :cond_c4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c4

    .line 91
    const-string v4, "DownLoaderTask"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download incomplete bytesCopied="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_c4
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mOutputStream:Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask$ProgressReportingOutputStream;

    invoke-virtual {v4}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask$ProgressReportingOutputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_c9} :catch_5c

    goto :goto_61
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->download()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    :goto_6
    return-void

    .line 62
    :cond_7
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mFile:Ljava/io/File;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v0, v1, p1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->downloadFinished(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    :cond_19
    const/4 v1, 0x0

    goto :goto_15
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

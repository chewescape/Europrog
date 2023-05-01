.class public Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;
.super Landroid/os/AsyncTask;
.source "ZipExtractorTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask$ProgressReportingOutputStream;
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

.field private final mContext:Landroid/content/Context;

.field private final mInput:Ljava/io/File;

.field private final mOutput:Ljava/io/File;

.field private mReplaceAll:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
    .registers 8
    .param p1, "in"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "replaceAll"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    const-string v0, "ZipExtractorTask"

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mInput:Ljava/io/File;

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mOutput:Ljava/io/File;

    .line 38
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mOutput:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_43

    .line 39
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mOutput:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_43

    .line 40
    const-string v0, "ZipExtractorTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to make directories:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mOutput:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_43
    iput-object p3, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mContext:Landroid/content/Context;

    .line 44
    iput-boolean p4, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mReplaceAll:Z

    .line 45
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 11
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    const/16 v6, 0x2000

    .line 116
    new-array v0, v6, [B

    .line 117
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 118
    .local v3, "in":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, p2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 119
    .local v5, "out":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v4, 0x0

    .line 121
    .local v4, "n":I
    :goto_10
    const/4 v6, 0x0

    const/16 v7, 0x2000

    :try_start_13
    invoke-virtual {v3, v0, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_20

    .line 122
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 123
    add-int/2addr v1, v4

    goto :goto_10

    .line 125
    :cond_20
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_23} :catch_34
    .catchall {:try_start_13 .. :try_end_23} :catchall_49

    .line 130
    :try_start_23
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_2a

    .line 135
    :goto_26
    :try_start_26
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2f

    .line 140
    :goto_29
    return v1

    .line 131
    :catch_2a
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2f
    move-exception v2

    .line 137
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 126
    .end local v2    # "e":Ljava/io/IOException;
    :catch_34
    move-exception v2

    .line 127
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_35
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_49

    .line 130
    :try_start_38
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_44

    .line 135
    :goto_3b
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_29

    .line 136
    :catch_3f
    move-exception v2

    .line 137
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 131
    :catch_44
    move-exception v2

    .line 132
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 129
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_49
    move-exception v6

    .line 130
    :try_start_4a
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_51

    .line 135
    :goto_4d
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_56

    .line 138
    :goto_50
    throw v6

    .line 131
    :catch_51
    move-exception v2

    .line 132
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v2

    .line 137
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50
.end method

.method private getOriginalSize(Ljava/util/zip/ZipFile;)J
    .registers 10
    .param p1, "file"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 105
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const-wide/16 v2, 0x0

    .line 106
    .local v2, "originalSize":J
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 107
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 108
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    .line 109
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_6

    .line 112
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_22
    return-wide v2
.end method

.method private unzip()J
    .registers 15

    .prologue
    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .local v4, "extractedSize":J
    const-wide/16 v8, -0x1

    .line 63
    .local v8, "uncompressedSize":J
    const/4 v7, 0x0

    .line 65
    .local v7, "zip":Ljava/util/zip/ZipFile;
    :try_start_5
    new-instance v10, Ljava/util/zip/ZipFile;

    iget-object v11, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mInput:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_c} :catch_e0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_bc
    .catchall {:try_start_5 .. :try_end_c} :catchall_cb

    .line 66
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .local v10, "zip":Ljava/util/zip/ZipFile;
    :try_start_c
    invoke-direct {p0, v10}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->getOriginalSize(Ljava/util/zip/ZipFile;)J

    move-result-wide v8

    .line 67
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    long-to-int v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->publishProgress([Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 70
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_aa

    .line 71
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 72
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_2a

    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v11, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mOutput:Ljava/io/File;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v0, "destination":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_78

    .line 77
    const-string v11, "ZipExtractorTask"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "make="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 80
    :cond_78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_86

    iget-object v11, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_86

    iget-boolean v11, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mReplaceAll:Z

    if-nez v11, :cond_86

    .line 83
    :cond_86
    new-instance v6, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask$ProgressReportingOutputStream;

    invoke-direct {v6, p0, v0}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask$ProgressReportingOutputStream;-><init>(Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;Ljava/io/File;)V

    .line 84
    .local v6, "outStream":Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask$ProgressReportingOutputStream;
    invoke-virtual {v10, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {p0, v11, v6}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v11

    int-to-long v12, v11

    add-long/2addr v4, v12

    .line 85
    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask$ProgressReportingOutputStream;->close()V
    :try_end_98
    .catch Ljava/util/zip/ZipException; {:try_start_c .. :try_end_98} :catch_99
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_98} :catch_dd
    .catchall {:try_start_c .. :try_end_98} :catchall_da

    goto :goto_2a

    .line 87
    .end local v0    # "destination":Ljava/io/File;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "outStream":Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask$ProgressReportingOutputStream;
    :catch_99
    move-exception v1

    move-object v7, v10

    .line 88
    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .local v1, "e":Ljava/util/zip/ZipException;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    :goto_9b
    :try_start_9b
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_cb

    .line 93
    if-eqz v7, :cond_a3

    .line 94
    :try_start_a0
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_b7

    .line 100
    .end local v1    # "e":Ljava/util/zip/ZipException;
    :cond_a3
    :goto_a3
    cmp-long v11, v4, v8

    if-nez v11, :cond_d7

    const-wide/16 v12, 0x0

    :goto_a9
    return-wide v12

    .line 93
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :cond_aa
    if-eqz v10, :cond_af

    .line 94
    :try_start_ac
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b1

    :cond_af
    move-object v7, v10

    .line 97
    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_a3

    .line 95
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :catch_b1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v10

    .line 98
    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_a3

    .line 95
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .local v1, "e":Ljava/util/zip/ZipException;
    :catch_b7
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :catch_bc
    move-exception v1

    .line 90
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_bd
    :try_start_bd
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_cb

    .line 93
    if-eqz v7, :cond_a3

    .line 94
    :try_start_c2
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_a3

    .line 95
    :catch_c6
    move-exception v1

    .line 96
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 92
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_cb
    move-exception v11

    .line 93
    :goto_cc
    if-eqz v7, :cond_d1

    .line 94
    :try_start_ce
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d2

    .line 97
    :cond_d1
    :goto_d1
    throw v11

    .line 95
    :catch_d2
    move-exception v1

    .line 96
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d1

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    :cond_d7
    const-wide/16 v12, -0x1

    goto :goto_a9

    .line 92
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :catchall_da
    move-exception v11

    move-object v7, v10

    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_cc

    .line 89
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    :catch_dd
    move-exception v1

    move-object v7, v10

    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_bd

    .line 87
    :catch_e0
    move-exception v1

    goto :goto_9b
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->unzip()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    :goto_6
    return-void

    .line 56
    :cond_7
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->mInput:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->unzipFinished(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

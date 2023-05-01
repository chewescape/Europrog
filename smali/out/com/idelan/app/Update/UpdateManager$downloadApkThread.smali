.class Lcom/idelan/app/Update/UpdateManager$downloadApkThread;
.super Ljava/lang/Thread;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/Update/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "downloadApkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/Update/UpdateManager;


# direct methods
.method private constructor <init>(Lcom/idelan/app/Update/UpdateManager;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/idelan/app/Update/UpdateManager;Lcom/idelan/app/Update/UpdateManager$downloadApkThread;)V
    .registers 3

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;-><init>(Lcom/idelan/app/Update/UpdateManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 226
    const-string v13, "mounted"

    .line 225
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 226
    if-eqz v12, :cond_b7

    .line 228
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 229
    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 228
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 230
    .local v10, "sdpath":Ljava/lang/String;
    iget-object v12, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "download"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/idelan/app/Update/UpdateManager;->access$4(Lcom/idelan/app/Update/UpdateManager;Ljava/lang/String;)V

    .line 231
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v12}, Lcom/idelan/app/Update/UpdateManager;->access$5(Lcom/idelan/app/Update/UpdateManager;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 234
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 233
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 235
    .local v2, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 237
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    .line 239
    .local v8, "length":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 241
    .local v7, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    iget-object v12, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v12}, Lcom/idelan/app/Update/UpdateManager;->access$6(Lcom/idelan/app/Update/UpdateManager;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6b

    .line 244
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 246
    :cond_6b
    new-instance v0, Ljava/io/File;

    iget-object v12, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v12}, Lcom/idelan/app/Update/UpdateManager;->access$6(Lcom/idelan/app/Update/UpdateManager;)Ljava/lang/String;

    move-result-object v12

    .line 247
    iget-object v13, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v13}, Lcom/idelan/app/Update/UpdateManager;->access$7(Lcom/idelan/app/Update/UpdateManager;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/idelan/app/Util/AppUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 246
    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v0, "apkFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 249
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 251
    .local v3, "count":I
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 254
    .local v1, "buf":[B
    :cond_8a
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 255
    .local v9, "numread":I
    add-int/2addr v3, v9

    .line 257
    iget-object v12, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    int-to-float v13, v3

    int-to-float v14, v8

    div-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-static {v12, v13}, Lcom/idelan/app/Update/UpdateManager;->access$8(Lcom/idelan/app/Update/UpdateManager;I)V

    .line 259
    iget-object v12, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v12}, Lcom/idelan/app/Update/UpdateManager;->access$9(Lcom/idelan/app/Update/UpdateManager;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    if-gtz v9, :cond_c1

    .line 262
    iget-object v12, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v12}, Lcom/idelan/app/Update/UpdateManager;->access$9(Lcom/idelan/app/Update/UpdateManager;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    :goto_b1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 269
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_b7} :catch_ce
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b7} :catch_d3

    .line 277
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "length":I
    .end local v9    # "numread":I
    .end local v10    # "sdpath":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    :cond_b7
    :goto_b7
    iget-object v12, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v12}, Lcom/idelan/app/Update/UpdateManager;->access$11(Lcom/idelan/app/Update/UpdateManager;)Landroid/app/Dialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Dialog;->dismiss()V

    .line 278
    return-void

    .line 266
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v1    # "buf":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "count":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "length":I
    .restart local v9    # "numread":I
    .restart local v10    # "sdpath":Ljava/lang/String;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_c1
    const/4 v12, 0x0

    :try_start_c2
    invoke-virtual {v6, v1, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 267
    iget-object v12, p0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v12}, Lcom/idelan/app/Update/UpdateManager;->access$10(Lcom/idelan/app/Update/UpdateManager;)Z
    :try_end_ca
    .catch Ljava/net/MalformedURLException; {:try_start_c2 .. :try_end_ca} :catch_ce
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_ca} :catch_d3

    move-result v12

    if-eqz v12, :cond_8a

    goto :goto_b1

    .line 271
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "length":I
    .end local v9    # "numread":I
    .end local v10    # "sdpath":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    :catch_ce
    move-exception v4

    .line 272
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_b7

    .line 273
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_d3
    move-exception v4

    .line 274
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b7
.end method

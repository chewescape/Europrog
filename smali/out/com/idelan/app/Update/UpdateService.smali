.class public Lcom/idelan/app/Update/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak",
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/app/Update/UpdateService$DownLoadThread;
    }
.end annotation


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "Key_App_Name"

.field private static final DOWN_ERROR:I = 0x0

.field private static final DOWN_OK:I = 0x1

.field public static final Down_Url:Ljava/lang/String; = "Key_Down_Url"

.field public static ICON_ID:I = 0x0

.field private static final KonkaApplication:Ljava/lang/String; = "konkaUpdateApplication"

.field private static final TIMEOUT:I = 0x2710

.field private static final down_step_custom:I = 0x1

.field private static down_url:Ljava/lang/String;

.field private static isCreateFileSucess:Z

.field private static updateDir:Ljava/io/File;

.field private static updateFile:Ljava/io/File;


# instance fields
.field private app_name:Ljava/lang/String;

.field private builder:Landroid/app/Notification$Builder;

.field private contentView:Landroid/widget/RemoteViews;

.field private final handler:Landroid/os/Handler;

.field private notification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/idelan/app/Update/UpdateService;->ICON_ID:I

    .line 46
    sput-object v1, Lcom/idelan/app/Update/UpdateService;->updateDir:Ljava/io/File;

    .line 47
    sput-object v1, Lcom/idelan/app/Update/UpdateService;->updateFile:Ljava/io/File;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    new-instance v0, Lcom/idelan/app/Update/UpdateService$1;

    invoke-direct {v0, p0}, Lcom/idelan/app/Update/UpdateService$1;-><init>(Lcom/idelan/app/Update/UpdateService;)V

    iput-object v0, p0, Lcom/idelan/app/Update/UpdateService;->handler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/idelan/app/Update/UpdateService;)V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/idelan/app/Update/UpdateService;->installApk()V

    return-void
.end method

.method static synthetic access$1(Lcom/idelan/app/Update/UpdateService;)V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/idelan/app/Update/UpdateService;->installFailure()V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/idelan/app/Update/UpdateService;->down_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Ljava/io/File;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/idelan/app/Update/UpdateService;->updateFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$4(Lcom/idelan/app/Update/UpdateService;Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/idelan/app/Update/UpdateService;->downloadUpdateFile(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5(Lcom/idelan/app/Update/UpdateService;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static createFile(Ljava/lang/String;)V
    .registers 6
    .param p0, "app_name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 311
    const-string v1, "mounted"

    .line 312
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 312
    if-eqz v1, :cond_82

    .line 313
    const/4 v1, 0x1

    sput-boolean v1, Lcom/idelan/app/Update/UpdateService;->isCreateFileSucess:Z

    .line 315
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 316
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "konkaUpdateApplication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/idelan/app/Update/UpdateService;->updateDir:Ljava/io/File;

    .line 317
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/idelan/app/Update/UpdateService;->updateDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/idelan/app/Update/UpdateService;->updateFile:Ljava/io/File;

    .line 319
    sget-object v1, Lcom/idelan/app/Update/UpdateService;->updateDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 320
    sget-object v1, Lcom/idelan/app/Update/UpdateService;->updateDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 322
    :cond_6d
    sget-object v1, Lcom/idelan/app/Update/UpdateService;->updateFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7a

    .line 324
    :try_start_75
    sget-object v1, Lcom/idelan/app/Update/UpdateService;->updateFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7a} :catch_7b

    .line 334
    :cond_7a
    :goto_7a
    return-void

    .line 325
    :catch_7b
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    sput-boolean v4, Lcom/idelan/app/Update/UpdateService;->isCreateFileSucess:Z

    .line 327
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 332
    .end local v0    # "e":Ljava/io/IOException;
    :cond_82
    sput-boolean v4, Lcom/idelan/app/Update/UpdateService;->isCreateFileSucess:Z

    goto :goto_7a
.end method

.method private createNotification()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "iconId":I
    sget v1, Lcom/idelan/app/Update/UpdateService;->ICON_ID:I

    if-nez v1, :cond_bc

    .line 205
    const-string v1, "icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 208
    :goto_c
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/idelan/app/Update/UpdateService;->app_name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v3, "is_downing"

    invoke-static {p0, v3}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 210
    invoke-virtual {p0, v3}, Lcom/idelan/app/Update/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 208
    iput-object v1, p0, Lcom/idelan/app/Update/UpdateService;->builder:Landroid/app/Notification$Builder;

    .line 215
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/idelan/app/Update/UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 216
    const-string v3, "notification_item"

    invoke-static {p0, v3}, Lcom/idelan/app/Util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 215
    iput-object v1, p0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    .line 217
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    .line 218
    const-string v2, "notificationTitle"

    invoke-static {p0, v2}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/idelan/app/Update/UpdateService;->app_name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v4, "is_downing"

    invoke-static {p0, v4}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 220
    invoke-virtual {p0, v4}, Lcom/idelan/app/Update/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    .line 223
    const-string v2, "notificationPercent"

    invoke-static {p0, v2}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "0%"

    .line 222
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    .line 226
    const-string v2, "notificationProgress"

    invoke-static {p0, v2}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    .line 225
    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 231
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateService;->builder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateService;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 231
    iput-object v1, p0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    .line 234
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 235
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/idelan/app/Update/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/idelan/app/Update/UpdateService;->notificationManager:Landroid/app/NotificationManager;

    .line 236
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateService;->notificationManager:Landroid/app/NotificationManager;

    .line 237
    const-string v2, "notification_item"

    invoke-static {p0, v2}, Lcom/idelan/app/Util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 238
    iget-object v3, p0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    .line 236
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 239
    return-void

    .line 207
    :cond_bc
    sget v0, Lcom/idelan/app/Update/UpdateService;->ICON_ID:I

    goto/16 :goto_c
.end method

.method private createThread()V
    .registers 3

    .prologue
    .line 168
    new-instance v0, Lcom/idelan/app/Update/UpdateService$DownLoadThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/idelan/app/Update/UpdateService$DownLoadThread;-><init>(Lcom/idelan/app/Update/UpdateService;Lcom/idelan/app/Update/UpdateService$DownLoadThread;)V

    invoke-virtual {v0}, Lcom/idelan/app/Update/UpdateService$DownLoadThread;->start()V

    .line 169
    return-void
.end method

.method private downloadUpdateFile(Ljava/lang/String;Ljava/lang/String;)J
    .registers 19
    .param p1, "down_url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v3, 0x1

    .line 253
    .local v3, "down_step":I
    const/4 v4, 0x0

    .line 254
    .local v4, "downloadCount":I
    const/4 v10, 0x0

    .line 259
    .local v10, "updateCount":I
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 261
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 260
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 262
    .local v5, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v12, 0x2710

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 263
    const/16 v12, 0x2710

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 265
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 266
    .local v9, "totalSize":I
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 267
    .local v6, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 269
    .local v7, "outputStream":Ljava/io/OutputStream;
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 270
    .local v2, "buffer":[B
    const/4 v8, 0x0

    .line 272
    .local v8, "readsize":I
    :cond_2f
    :goto_2f
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v12, -0x1

    if-ne v8, v12, :cond_43

    .line 292
    if-eqz v5, :cond_3b

    .line 293
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 295
    :cond_3b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 296
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 298
    int-to-long v12, v4

    return-wide v12

    .line 273
    :cond_43
    const/4 v12, 0x0

    invoke-virtual {v7, v2, v12, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 274
    add-int/2addr v4, v8

    .line 275
    if-eqz v10, :cond_50

    .line 276
    mul-int/lit8 v12, v4, 0x64

    div-int/2addr v12, v9

    sub-int/2addr v12, v3

    if-lt v12, v10, :cond_2f

    .line 277
    :cond_50
    add-int/2addr v10, v3

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    .line 280
    const-string v13, "notificationPercent"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 281
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 279
    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    .line 283
    const-string v13, "notificationProgress"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x64

    .line 284
    const/4 v15, 0x0

    .line 282
    invoke-virtual {v12, v13, v14, v10, v15}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 285
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    iput-object v13, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/idelan/app/Update/UpdateService;->notificationManager:Landroid/app/NotificationManager;

    .line 287
    const-string v13, "notification_item"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/idelan/app/Util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    .line 286
    invoke-virtual {v12, v13, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2f
.end method

.method private installApk()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 140
    sget-object v2, Lcom/idelan/app/Update/UpdateService;->updateFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 141
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/idelan/app/Update/UpdateService;->pendingIntent:Landroid/app/PendingIntent;

    .line 145
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/idelan/app/Update/UpdateService;->pendingIntent:Landroid/app/PendingIntent;

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 146
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 147
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    .line 148
    const-string v3, "notificationTitle"

    invoke-static {p0, v3}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/idelan/app/Update/UpdateService;->app_name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v5, "down_sucess"

    .line 150
    invoke-static {p0, v5}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/idelan/app/Update/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    .line 153
    const-string v3, "notificationImage"

    invoke-static {p0, v3}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 154
    const v4, 0x1080082

    .line 152
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 155
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateService;->notificationManager:Landroid/app/NotificationManager;

    .line 156
    const-string v3, "notification_item"

    invoke-static {p0, v3}, Lcom/idelan/app/Util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 157
    iget-object v4, p0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    .line 155
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 158
    return-void
.end method

.method private installFailure()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/idelan/app/Update/UpdateService;->pendingIntent:Landroid/app/PendingIntent;

    .line 125
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/idelan/app/Update/UpdateService;->pendingIntent:Landroid/app/PendingIntent;

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 126
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 127
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateService;->contentView:Landroid/widget/RemoteViews;

    .line 129
    const-string v2, "notificationTitle"

    invoke-static {p0, v2}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/idelan/app/Update/UpdateService;->app_name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v4, "down_fail"

    .line 131
    invoke-static {p0, v4}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/idelan/app/Update/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateService;->notificationManager:Landroid/app/NotificationManager;

    .line 134
    const-string v2, "notification_item"

    invoke-static {p0, v2}, Lcom/idelan/app/Util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 135
    iget-object v3, p0, Lcom/idelan/app/Update/UpdateService;->notification:Landroid/app/Notification;

    .line 133
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 136
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 75
    const-string v0, "Key_App_Name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/app/Update/UpdateService;->app_name:Ljava/lang/String;

    .line 76
    const-string v0, "Key_Down_Url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idelan/app/Update/UpdateService;->down_url:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateService;->app_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/idelan/app/Update/UpdateService;->createFile(Ljava/lang/String;)V

    .line 81
    sget-boolean v0, Lcom/idelan/app/Update/UpdateService;->isCreateFileSucess:Z

    if-eqz v0, :cond_24

    .line 82
    invoke-direct {p0}, Lcom/idelan/app/Update/UpdateService;->createNotification()V

    .line 83
    invoke-direct {p0}, Lcom/idelan/app/Update/UpdateService;->createThread()V

    .line 92
    :goto_1f
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 85
    :cond_24
    const-string v0, "insert_card"

    invoke-static {p0, v0}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 86
    const/4 v1, 0x0

    .line 85
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-virtual {p0}, Lcom/idelan/app/Update/UpdateService;->stopSelf()V

    goto :goto_1f
.end method

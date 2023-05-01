.class public Lcom/idelan/app/Util/ACache;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/app/Util/ACache$ACacheManager;,
        Lcom/idelan/app/Util/ACache$Utils;,
        Lcom/idelan/app/Util/ACache$xFileOutputStream;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x7fffffff

.field private static final MAX_SIZE:I = 0x2faf080

.field public static final TIME_DAY:I = 0x15180

.field public static final TIME_HOUR:I = 0xe10

.field private static mInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/idelan/app/Util/ACache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Lcom/idelan/app/Util/ACache$ACacheManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/idelan/app/Util/ACache;->mInstanceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .registers 13
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "max_size"    # J
    .param p4, "max_count"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_28

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t make dirs in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_28
    new-instance v1, Lcom/idelan/app/Util/ACache$ACacheManager;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/idelan/app/Util/ACache$ACacheManager;-><init>(Lcom/idelan/app/Util/ACache;Ljava/io/File;JILcom/idelan/app/Util/ACache$ACacheManager;)V

    iput-object v1, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    .line 106
    return-void
.end method

.method static synthetic access$0(Lcom/idelan/app/Util/ACache;)Lcom/idelan/app/Util/ACache$ACacheManager;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/idelan/app/Util/ACache;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string v0, "ACache"

    invoke-static {p0, v0}, Lcom/idelan/app/Util/ACache;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/idelan/app/Util/ACache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;JI)Lcom/idelan/app/Util/ACache;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .prologue
    .line 81
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ACache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v0, "f":Ljava/io/File;
    invoke-static {v0, p1, p2, p3}, Lcom/idelan/app/Util/ACache;->get(Ljava/io/File;JI)Lcom/idelan/app/Util/ACache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/idelan/app/Util/ACache;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v0, "f":Ljava/io/File;
    const-wide/32 v2, 0x2faf080

    const v1, 0x7fffffff

    invoke-static {v0, v2, v3, v1}, Lcom/idelan/app/Util/ACache;->get(Ljava/io/File;JI)Lcom/idelan/app/Util/ACache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/io/File;)Lcom/idelan/app/Util/ACache;
    .registers 4
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 77
    const-wide/32 v0, 0x2faf080

    const v2, 0x7fffffff

    invoke-static {p0, v0, v1, v2}, Lcom/idelan/app/Util/ACache;->get(Ljava/io/File;JI)Lcom/idelan/app/Util/ACache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/io/File;JI)Lcom/idelan/app/Util/ACache;
    .registers 9
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .prologue
    .line 87
    sget-object v1, Lcom/idelan/app/Util/ACache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/idelan/app/Util/ACache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idelan/app/Util/ACache;

    .line 88
    .local v0, "manager":Lcom/idelan/app/Util/ACache;
    if-nez v0, :cond_46

    .line 89
    new-instance v0, Lcom/idelan/app/Util/ACache;

    .end local v0    # "manager":Lcom/idelan/app/Util/ACache;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/idelan/app/Util/ACache;-><init>(Ljava/io/File;JI)V

    .line 92
    .restart local v0    # "manager":Lcom/idelan/app/Util/ACache;
    sget-object v1, Lcom/idelan/app/Util/ACache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/idelan/app/Util/ACache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_46
    return-object v0
.end method

.method private static myPid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v0}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$9(Lcom/idelan/app/Util/ACache$ACacheManager;)V

    .line 622
    return-void
.end method

.method public file(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 601
    iget-object v1, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v1, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$6(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 602
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 604
    .end local v0    # "f":Ljava/io/File;
    :goto_c
    return-object v0

    .restart local v0    # "f":Ljava/io/File;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v1, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v1, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$7(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 367
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 368
    const/4 v1, 0x0

    .line 369
    :goto_d
    return-object v1

    :cond_e
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_d
.end method

.method public getAsBinary(Ljava/lang/String;)[B
    .registers 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "RAFile":Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    .line 396
    .local v5, "removeFile":Z
    :try_start_3
    iget-object v7, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v7, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$7(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 397
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_5d
    .catchall {:try_start_3 .. :try_end_c} :catchall_71

    move-result v7

    if-nez v7, :cond_1f

    .line 412
    if-eqz v0, :cond_14

    .line 414
    :try_start_11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_1a

    .line 419
    :cond_14
    :goto_14
    if-eqz v5, :cond_19

    .line 420
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->remove(Ljava/lang/String;)Z

    .line 410
    .end local v4    # "file":Ljava/io/File;
    :cond_19
    :goto_19
    return-object v6

    .line 415
    .restart local v4    # "file":Ljava/io/File;
    :catch_1a
    move-exception v3

    .line 416
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 399
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v1, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_5d
    .catchall {:try_start_1f .. :try_end_26} :catchall_71

    .line 400
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .local v1, "RAFile":Ljava/io/RandomAccessFile;
    :try_start_26
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v2, v7, [B

    .line 401
    .local v2, "byteArray":[B
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 402
    invoke-static {v2}, Lcom/idelan/app/Util/ACache$Utils;->access$4([B)Z

    move-result v7

    if-nez v7, :cond_4b

    .line 403
    invoke-static {v2}, Lcom/idelan/app/Util/ACache$Utils;->access$5([B)[B
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_39} :catch_85
    .catchall {:try_start_26 .. :try_end_39} :catchall_82

    move-result-object v6

    .line 412
    if-eqz v1, :cond_3f

    .line 414
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_46

    .line 419
    :cond_3f
    :goto_3f
    if-eqz v5, :cond_44

    .line 420
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->remove(Ljava/lang/String;)Z

    :cond_44
    move-object v0, v1

    .line 403
    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_19

    .line 415
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_46
    move-exception v3

    .line 416
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 405
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4b
    const/4 v5, 0x1

    .line 412
    if-eqz v1, :cond_51

    .line 414
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_58

    .line 419
    :cond_51
    :goto_51
    if-eqz v5, :cond_56

    .line 420
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->remove(Ljava/lang/String;)Z

    :cond_56
    move-object v0, v1

    .line 406
    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_19

    .line 415
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_58
    move-exception v3

    .line 416
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 408
    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .end local v2    # "byteArray":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_5d
    move-exception v3

    .line 409
    .local v3, "e":Ljava/lang/Exception;
    :goto_5e
    :try_start_5e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_71

    .line 412
    if-eqz v0, :cond_66

    .line 414
    :try_start_63
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_6c

    .line 419
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_66
    :goto_66
    if-eqz v5, :cond_19

    .line 420
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_19

    .line 415
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_6c
    move-exception v3

    .line 416
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 411
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_71
    move-exception v6

    .line 412
    :goto_72
    if-eqz v0, :cond_77

    .line 414
    :try_start_74
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_7d

    .line 419
    :cond_77
    :goto_77
    if-eqz v5, :cond_7c

    .line 420
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->remove(Ljava/lang/String;)Z

    .line 421
    :cond_7c
    throw v6

    .line 415
    :catch_7d
    move-exception v3

    .line 416
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    .line 411
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_82
    move-exception v6

    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_72

    .line 408
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_85
    move-exception v3

    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_5e
.end method

.method public getAsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_8

    .line 547
    const/4 v0, 0x0

    .line 549
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/idelan/app/Util/ACache$Utils;->access$7([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public getAsDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_8

    .line 589
    const/4 v0, 0x0

    .line 591
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/idelan/app/Util/ACache$Utils;->access$7([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/idelan/app/Util/ACache$Utils;->access$9(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_7
.end method

.method public getAsJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 308
    :goto_9
    return-object v2

    .line 306
    :catch_a
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 262
    :goto_9
    return-object v2

    .line 260
    :catch_a
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public getAsObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 479
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v2

    .line 480
    .local v2, "data":[B
    if-eqz v2, :cond_21

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 484
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_9
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_2c
    .catchall {:try_start_9 .. :try_end_e} :catchall_45

    .line 485
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_e
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_62
    .catchall {:try_start_e .. :try_end_13} :catchall_5b

    .line 486
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_13
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_65
    .catchall {:try_start_13 .. :try_end_16} :catchall_5e

    move-result-object v6

    .line 493
    .local v6, "reObject":Ljava/lang/Object;
    if-eqz v1, :cond_1c

    .line 494
    :try_start_19
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_22

    .line 499
    :cond_1c
    :goto_1c
    if-eqz v5, :cond_21

    .line 500
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_27

    .line 506
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "reObject":Ljava/lang/Object;
    :cond_21
    :goto_21
    return-object v6

    .line 495
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "reObject":Ljava/lang/Object;
    :catch_22
    move-exception v3

    .line 496
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 501
    .end local v3    # "e":Ljava/io/IOException;
    :catch_27
    move-exception v3

    .line 502
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 488
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "reObject":Ljava/lang/Object;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_2c
    move-exception v3

    .line 489
    .local v3, "e":Ljava/lang/Exception;
    :goto_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_45

    .line 493
    if-eqz v0, :cond_35

    .line 494
    :try_start_32
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_40

    .line 499
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_35
    :goto_35
    if-eqz v4, :cond_21

    .line 500
    :try_start_37
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_21

    .line 501
    :catch_3b
    move-exception v3

    .line 502
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 495
    .local v3, "e":Ljava/lang/Exception;
    :catch_40
    move-exception v3

    .line 496
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 491
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_45
    move-exception v7

    .line 493
    :goto_46
    if-eqz v0, :cond_4b

    .line 494
    :try_start_48
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_51

    .line 499
    :cond_4b
    :goto_4b
    if-eqz v4, :cond_50

    .line 500
    :try_start_4d
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_56

    .line 504
    :cond_50
    :goto_50
    throw v7

    .line 495
    :catch_51
    move-exception v3

    .line 496
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    .line 501
    .end local v3    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v3

    .line 502
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 491
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_5b
    move-exception v7

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_46

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_5e
    move-exception v7

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_46

    .line 488
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_62
    move-exception v3

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2d

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_65
    move-exception v3

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2d
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 186
    iget-object v8, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v8, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$7(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 187
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_e

    .line 206
    :cond_d
    :goto_d
    return-object v7

    .line 189
    :cond_e
    const/4 v6, 0x0

    .line 190
    .local v6, "removeFile":Z
    const/4 v3, 0x0

    .line 192
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_10
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_5f
    .catchall {:try_start_10 .. :try_end_1a} :catchall_73

    .line 193
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1a
    const-string v5, ""

    .line 195
    .local v5, "readString":Ljava/lang/String;
    :goto_1c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentLine":Ljava/lang/String;
    if-nez v0, :cond_37

    .line 198
    invoke-static {v5}, Lcom/idelan/app/Util/ACache$Utils;->access$1(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4e

    .line 199
    invoke-static {v5}, Lcom/idelan/app/Util/ACache$Utils;->access$2(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2b} :catch_87
    .catchall {:try_start_1a .. :try_end_2b} :catchall_84

    move-result-object v7

    .line 208
    if-eqz v4, :cond_31

    .line 210
    :try_start_2e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_49

    .line 215
    :cond_31
    :goto_31
    if-eqz v6, :cond_d

    .line 216
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_d

    .line 196
    :cond_37
    :try_start_37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_47} :catch_87
    .catchall {:try_start_37 .. :try_end_47} :catchall_84

    move-result-object v5

    goto :goto_1c

    .line 211
    :catch_49
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4e
    const/4 v6, 0x1

    .line 208
    if-eqz v4, :cond_54

    .line 210
    :try_start_51
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5a

    .line 215
    :cond_54
    :goto_54
    if-eqz v6, :cond_d

    .line 216
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_d

    .line 211
    :catch_5a
    move-exception v1

    .line 212
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    .line 204
    .end local v0    # "currentLine":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "readString":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_5f
    move-exception v1

    .line 205
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_60
    :try_start_60
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_73

    .line 208
    if-eqz v3, :cond_68

    .line 210
    :try_start_65
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6e

    .line 215
    :cond_68
    :goto_68
    if-eqz v6, :cond_d

    .line 216
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_d

    .line 211
    :catch_6e
    move-exception v1

    .line 212
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    .line 207
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_73
    move-exception v7

    .line 208
    :goto_74
    if-eqz v3, :cond_79

    .line 210
    :try_start_76
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7f

    .line 215
    :cond_79
    :goto_79
    if-eqz v6, :cond_7e

    .line 216
    invoke-virtual {p0, p1}, Lcom/idelan/app/Util/ACache;->remove(Ljava/lang/String;)Z

    .line 217
    :cond_7e
    throw v7

    .line 211
    :catch_7f
    move-exception v1

    .line 212
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    .line 207
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_84
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_74

    .line 204
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_87
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_60
.end method

.method public put(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Lcom/idelan/app/Util/ACache$xFileOutputStream;

    iget-object v1, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v1, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$6(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/idelan/app/Util/ACache$xFileOutputStream;-><init>(Lcom/idelan/app/Util/ACache;Ljava/io/File;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 522
    invoke-static {p2}, Lcom/idelan/app/Util/ACache$Utils;->access$6(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;[B)V

    .line 523
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .param p3, "saveTime"    # I

    .prologue
    .line 536
    invoke-static {p2}, Lcom/idelan/app/Util/ACache$Utils;->access$6(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;[BI)V

    .line 537
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 564
    invoke-static {p2}, Lcom/idelan/app/Util/ACache$Utils;->access$8(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 565
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;
    .param p3, "saveTime"    # I

    .prologue
    .line 578
    invoke-static {p2}, Lcom/idelan/app/Util/ACache$Utils;->access$8(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 579
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 436
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 437
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;
    .param p3, "saveTime"    # I

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 453
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_41
    .catchall {:try_start_2 .. :try_end_7} :catchall_2f

    .line 454
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_7
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_43
    .catchall {:try_start_7 .. :try_end_c} :catchall_3a

    .line 455
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_c
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 457
    .local v2, "data":[B
    const/4 v6, -0x1

    if-eq p3, v6, :cond_1f

    .line 458
    invoke-virtual {p0, p1, v2, p3}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;[BI)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_23
    .catchall {:try_start_c .. :try_end_19} :catchall_3d

    .line 466
    :goto_19
    :try_start_19
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_34

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 470
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1e
    return-void

    .line 460
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, p1, v2}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;[B)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_3d

    goto :goto_19

    .line 462
    .end local v2    # "data":[B
    :catch_23
    move-exception v3

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 463
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_26
    :try_start_26
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2f

    .line 466
    :try_start_29
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_1e

    .line 467
    :catch_2d
    move-exception v6

    goto :goto_1e

    .line 464
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_2f
    move-exception v6

    .line 466
    :goto_30
    :try_start_30
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_38

    .line 469
    :goto_33
    throw v6

    .line 467
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_34
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1e

    .end local v2    # "data":[B
    :catch_38
    move-exception v7

    goto :goto_33

    .line 464
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_3a
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_30

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_3d
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_30

    .line 462
    :catch_41
    move-exception v3

    goto :goto_26

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_43
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_26
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v4, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v4, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$6(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 145
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 147
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_7
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_25
    .catchall {:try_start_7 .. :try_end_13} :catchall_3c

    .line 148
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_13
    invoke-virtual {v3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_58
    .catchall {:try_start_13 .. :try_end_16} :catchall_55

    .line 152
    if-eqz v3, :cond_1e

    .line 154
    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 155
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_50

    .line 160
    :cond_1e
    :goto_1e
    iget-object v4, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v4, v1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$0(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/io/File;)V

    move-object v2, v3

    .line 162
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :goto_24
    return-void

    .line 149
    :catch_25
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    :goto_26
    :try_start_26
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_3c

    .line 152
    if-eqz v2, :cond_31

    .line 154
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 155
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_37

    .line 160
    :cond_31
    :goto_31
    iget-object v4, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v4, v1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$0(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/io/File;)V

    goto :goto_24

    .line 156
    :catch_37
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3c
    move-exception v4

    .line 152
    :goto_3d
    if-eqz v2, :cond_45

    .line 154
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 155
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_45} :catch_4b

    .line 160
    :cond_45
    :goto_45
    iget-object v5, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v5, v1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$0(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/io/File;)V

    .line 161
    throw v4

    .line 156
    :catch_4b
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_50
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_55
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_3d

    .line 149
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_58
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_26
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "saveTime"    # I

    .prologue
    .line 175
    invoke-static {p3, p2}, Lcom/idelan/app/Util/ACache$Utils;->access$0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 278
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;
    .param p3, "saveTime"    # I

    .prologue
    .line 292
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 232
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;
    .param p3, "saveTime"    # I

    .prologue
    .line 246
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 324
    iget-object v4, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v4, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$6(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 325
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 327
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_1e
    .catchall {:try_start_7 .. :try_end_c} :catchall_35

    .line 328
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_51
    .catchall {:try_start_c .. :try_end_f} :catchall_4e

    .line 332
    if-eqz v3, :cond_17

    .line 334
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 335
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_49

    .line 340
    :cond_17
    :goto_17
    iget-object v4, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v4, v1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$0(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/io/File;)V

    move-object v2, v3

    .line 342
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1d
    return-void

    .line 329
    :catch_1e
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    :goto_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_35

    .line 332
    if-eqz v2, :cond_2a

    .line 334
    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 335
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_30

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2a
    :goto_2a
    iget-object v4, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v4, v1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$0(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/io/File;)V

    goto :goto_1d

    .line 336
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_30
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 331
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_35
    move-exception v4

    .line 332
    :goto_36
    if-eqz v2, :cond_3e

    .line 334
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 335
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_44

    .line 340
    :cond_3e
    :goto_3e
    iget-object v5, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v5, v1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$0(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/io/File;)V

    .line 341
    throw v4

    .line 336
    :catch_44
    move-exception v0

    .line 337
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .line 336
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_49
    move-exception v0

    .line 337
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 331
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4e
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_36

    .line 329
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_51
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1f
.end method

.method public put(Ljava/lang/String;[BI)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "saveTime"    # I

    .prologue
    .line 383
    invoke-static {p3, p2}, Lcom/idelan/app/Util/ACache$Utils;->access$3(I[B)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/idelan/app/Util/ACache;->put(Ljava/lang/String;[B)V

    .line 384
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/idelan/app/Util/ACache;->mCache:Lcom/idelan/app/Util/ACache$ACacheManager;

    invoke-static {v0, p1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$8(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.class public Lcom/idelan/java/Util/AssetDatabaseOpenHelper;
.super Ljava/lang/Object;
.source "AssetDatabaseOpenHelper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private databaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->databaseName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private copyDatabase(Ljava/io/File;)V
    .registers 5
    .param p1, "dbFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->databaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 81
    .local v0, "stream":Ljava/io/InputStream;
    invoke-static {p1, v0}, Lcom/idelan/java/Util/FileUtils;->writeFile(Ljava/io/File;Ljava/io/InputStream;)Z

    .line 82
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 83
    return-void
.end method


# virtual methods
.method public getDatabaseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->databaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 61
    .local v0, "dbFile":Ljava/io/File;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_29

    move-result v2

    if-nez v2, :cond_14

    .line 63
    :try_start_11
    invoke-direct {p0, v0}, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->copyDatabase(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_20
    .catchall {:try_start_11 .. :try_end_14} :catchall_29

    .line 69
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_29

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 64
    :catch_20
    move-exception v1

    .line 65
    .local v1, "e":Ljava/io/IOException;
    :try_start_21
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error creating source database"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 60
    .end local v0    # "dbFile":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->databaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 41
    .local v0, "dbFile":Ljava/io/File;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_29

    move-result v2

    if-nez v2, :cond_14

    .line 43
    :try_start_11
    invoke-direct {p0, v0}, Lcom/idelan/java/Util/AssetDatabaseOpenHelper;->copyDatabase(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_20
    .catchall {:try_start_11 .. :try_end_14} :catchall_29

    .line 49
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_29

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 44
    :catch_20
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    :try_start_21
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error creating source database"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 40
    .end local v0    # "dbFile":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.class public Lutils/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "BleDevices.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final FIELD_COBL_VER:Ljava/lang/String; = "cobl_version"

.field private static final FIELD_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final FIELD_ORIGINAL_NAME:Ljava/lang/String; = "original_name"

.field public static final FIELD_PIN:Ljava/lang/String; = "device_pin"

.field private static final FIELD_RFBL_VER:Ljava/lang/String; = "rfbl_version"

.field public static final FIELD_SHOW_NAME:Ljava/lang/String; = "show_name"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BleDevices.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    iput-object p1, p0, Lutils/DatabaseHelper;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BleDevices.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 35
    iput-object p1, p0, Lutils/DatabaseHelper;->context:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private addDoubleQuotation(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "roomName"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAllTable()Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    :try_start_1
    invoke-virtual {p0}, Lutils/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select name from sqlite_master  where type=\'table\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 117
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private getAllTableProfile()Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_1
    invoke-virtual {p0}, Lutils/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select name from sqlite_master  where type=\'table\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 124
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private select(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-virtual {p0}, Lutils/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lutils/DatabaseHelper;->addDoubleQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 139
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "device_address"

    aput-object v3, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device_address = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 142
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_38
    return-object v8

    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_39
    move-object v1, p1

    move-object v2, v4

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 141
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto :goto_38
.end method

.method private weatherTableContainsTheAddress(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :try_start_1
    invoke-direct {p0, p1, p2}, Lutils/DatabaseHelper;->select(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 130
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_10

    const/4 v1, 0x1

    :goto_e
    monitor-exit p0

    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_e

    .line 131
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public changeTableName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    invoke-virtual {p0}, Lutils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 191
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0}, Lutils/DatabaseHelper;->getAllTable()Landroid/database/Cursor;

    move-result-object v0

    .line 192
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_26

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-le v5, v4, :cond_26

    .line 193
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 194
    :cond_15
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 195
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 203
    :goto_25
    return v3

    .line 201
    :cond_26
    const-string v5, "ALTER TABLE \'%s\' RENAME TO \'%s\'"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object p2, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "sql":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v3, v4

    .line 203
    goto :goto_25
.end method

.method public createRoom(Ljava/lang/String;)V
    .registers 9
    .param p1, "roomName"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-virtual {p0}, Lutils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lutils/DatabaseHelper;->getAllRoom()Ljava/util/ArrayList;

    move-result-object v1

    .line 163
    .local v1, "rooms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 165
    :cond_10
    invoke-direct {p0, p1}, Lutils/DatabaseHelper;->addDoubleQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    const-string v3, "CREATE TABLE %s (%s char(20) PRIMARY KEY, %s varchar(20), %s varchar(20), %s integer, %s varchar(8), %s varchar(20));"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "device_address"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "original_name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "show_name"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "device_pin"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "cobl_version"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "rfbl_version"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "sql":Ljava/lang/String;
    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    .end local v2    # "sql":Ljava/lang/String;
    :cond_44
    return-void
.end method

.method public deleteRecord(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-virtual {p0}, Lutils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 174
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "device_address=?"

    .line 175
    .local v1, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 176
    .local v2, "whereValue":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lutils/DatabaseHelper;->addDoubleQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public dropTable(Ljava/lang/String;)V
    .registers 6
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 187
    :goto_6
    return-void

    .line 183
    :cond_7
    invoke-virtual {p0}, Lutils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lutils/DatabaseHelper;->addDoubleQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getAllRoom()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lutils/DatabaseHelper;->getAllTable()Landroid/database/Cursor;

    move-result-object v0

    .line 68
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_f

    .line 69
    :cond_d
    const/4 v1, 0x0

    .line 77
    :cond_e
    return-object v1

    .line 71
    :cond_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "rooms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 74
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "tableName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public getBleRoom(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lutils/DatabaseHelper;->getAllTable()Landroid/database/Cursor;

    move-result-object v0

    .line 53
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_10

    :cond_e
    move-object v1, v2

    .line 63
    :goto_f
    return-object v1

    .line 56
    :cond_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 57
    :cond_13
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 58
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "tableName":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lutils/DatabaseHelper;->weatherTableContainsTheAddress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_f

    .end local v1    # "tableName":Ljava/lang/String;
    :cond_25
    move-object v1, v2

    .line 63
    goto :goto_f
.end method

.method public getRecordInRoom(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "roomName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DataBaseBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    monitor-enter p0

    .line 82
    const/4 v4, 0x0

    :try_start_3
    invoke-direct {p0, p1, v4}, Lutils/DatabaseHelper;->select(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 83
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_11

    .line 84
    :cond_f
    monitor-exit p0

    .line 103
    :goto_10
    return-object v2

    .line 86
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    :cond_16
    :goto_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 89
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;-><init>()V

    .line 90
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DataBaseBean;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v4, "device_address"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->address:Ljava/lang/String;

    .line 93
    const-string v4, "original_name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->originalName:Ljava/lang/String;

    .line 94
    const-string v4, "show_name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->showName:Ljava/lang/String;

    .line 95
    const-string v4, "device_pin"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->pin:I

    .line 96
    const-string v4, "cobl_version"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 97
    .local v3, "i":I
    if-ltz v3, :cond_62

    .line 98
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->coblVersion:Ljava/lang/String;

    .line 99
    :cond_62
    const-string v4, "rfbl_version"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 100
    if-ltz v3, :cond_16

    .line 101
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->rfblVersion:Ljava/lang/String;

    goto :goto_16

    .line 104
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DataBaseBean;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    .end local v3    # "i":I
    :catchall_71
    move-exception v4

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw v4

    .line 103
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    :cond_74
    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_71

    goto :goto_10
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "originalName"    # Ljava/lang/String;
    .param p4, "showName"    # Ljava/lang/String;
    .param p5, "pin"    # I
    .param p6, "coblVersion"    # Ljava/lang/String;
    .param p7, "rfblVersion"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0}, Lutils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 147
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, p1}, Lutils/DatabaseHelper;->createRoom(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lutils/DatabaseHelper;->addDoubleQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "device_address"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "original_name"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "show_name"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "device_pin"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v2, "cobl_version"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "rfbl_version"

    invoke-virtual {v0, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 158
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 41
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 49
    return-void
.end method

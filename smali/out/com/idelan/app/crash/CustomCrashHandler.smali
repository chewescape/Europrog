.class public Lcom/idelan/app/crash/CustomCrashHandler;
.super Lcom/idelan/app/crash/BaseHelper;
.source "CustomCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static mInstance:Lcom/idelan/app/crash/CustomCrashHandler;


# instance fields
.field private appId:Ljava/lang/String;

.field private errorHM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isWriteLocation:Z

.field private mContext:Landroid/content/Context;

.field private uri:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/idelan/app/crash/BaseHelper;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idelan/app/crash/CustomCrashHandler;->isWriteLocation:Z

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/idelan/app/crash/CustomCrashHandler;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/idelan/app/crash/CustomCrashHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/idelan/app/crash/CustomCrashHandler;Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/idelan/app/crash/CustomCrashHandler;->savaInfoToSD(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$2(Lcom/idelan/app/crash/CustomCrashHandler;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/idelan/app/crash/CustomCrashHandler;->uri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/idelan/app/crash/CustomCrashHandler;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/idelan/app/crash/CustomCrashHandler;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/idelan/app/crash/CustomCrashHandler;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/idelan/app/crash/CustomCrashHandler;->uri:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/idelan/app/crash/CustomCrashHandler;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/idelan/app/crash/CustomCrashHandler;->errorHM:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/idelan/app/crash/CustomCrashHandler;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/idelan/app/crash/CustomCrashHandler;->mInstance:Lcom/idelan/app/crash/CustomCrashHandler;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/idelan/app/crash/CustomCrashHandler;

    invoke-direct {v0}, Lcom/idelan/app/crash/CustomCrashHandler;-><init>()V

    sput-object v0, Lcom/idelan/app/crash/CustomCrashHandler;->mInstance:Lcom/idelan/app/crash/CustomCrashHandler;

    .line 52
    :cond_b
    sget-object v0, Lcom/idelan/app/crash/CustomCrashHandler;->mInstance:Lcom/idelan/app/crash/CustomCrashHandler;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    new-instance v0, Lcom/idelan/app/crash/CustomCrashHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/idelan/app/crash/CustomCrashHandler$1;-><init>(Lcom/idelan/app/crash/CustomCrashHandler;Ljava/lang/Throwable;)V

    .line 96
    invoke-virtual {v0}, Lcom/idelan/app/crash/CustomCrashHandler$1;->start()V

    .line 98
    return-void
.end method

.method private obtainExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 169
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 170
    .local v1, "mStringWriter":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 171
    .local v0, "mPrintWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 173
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private obtainSimpleInfo(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 133
    .local v2, "mPackageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 136
    .local v1, "mPackageInfo":Landroid/content/pm/PackageInfo;
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 135
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_12} :catch_b8

    move-result-object v1

    .line 140
    :goto_13
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 141
    iget-object v5, p0, Lcom/idelan/app/crash/CustomCrashHandler;->mContext:Landroid/content/Context;

    const-string v6, "version_name"

    invoke-static {v5, v6}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 140
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 140
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 144
    iget-object v5, p0, Lcom/idelan/app/crash/CustomCrashHandler;->mContext:Landroid/content/Context;

    const-string v6, "version_code"

    invoke-static {v5, v6}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 143
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 147
    iget-object v5, p0, Lcom/idelan/app/crash/CustomCrashHandler;->mContext:Landroid/content/Context;

    const-string v6, "test_device"

    invoke-static {v5, v6}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 146
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 150
    iget-object v5, p0, Lcom/idelan/app/crash/CustomCrashHandler;->mContext:Landroid/content/Context;

    const-string v6, "device_sdk"

    invoke-static {v5, v6}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 149
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 149
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->errorHM:Ljava/util/HashMap;

    const-string v5, "appName"

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->errorHM:Ljava/util/HashMap;

    const-string v5, "appCode"

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->errorHM:Ljava/util/HashMap;

    const-string v5, "package"

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->errorHM:Ljava/util/HashMap;

    const-string v5, "deviceType"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->errorHM:Ljava/util/HashMap;

    const-string v5, "deviceCode"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->errorHM:Ljava/util/HashMap;

    const-string v5, "create_time"

    invoke-static {}, Lcom/idelan/java/Util/TimeUtils;->getCurrentTimeInString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object v3

    .line 137
    :catch_b8
    move-exception v0

    .line 138
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_13
.end method

.method private savaInfoToSD(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 184
    const/4 v3, 0x0

    .line 185
    .local v3, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, p1}, Lcom/idelan/app/crash/CustomCrashHandler;->obtainSimpleInfo(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v8

    .line 187
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 186
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6d

    .line 192
    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-direct {p0, p2}, Lcom/idelan/app/crash/CustomCrashHandler;->obtainExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "errorInfo":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    iget-object v8, p0, Lcom/idelan/app/crash/CustomCrashHandler;->errorHM:Ljava/util/HashMap;

    const-string v9, "errorLog"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/idelan/Encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v8, p0, Lcom/idelan/app/crash/CustomCrashHandler;->username:Ljava/lang/String;

    invoke-static {v8}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_44

    .line 198
    iget-object v8, p0, Lcom/idelan/app/crash/CustomCrashHandler;->errorHM:Ljava/util/HashMap;

    const-string v9, "userName"

    iget-object v10, p0, Lcom/idelan/app/crash/CustomCrashHandler;->username:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_44
    iget-boolean v8, p0, Lcom/idelan/app/crash/CustomCrashHandler;->isWriteLocation:Z

    if-eqz v8, :cond_6c

    .line 200
    const-string v8, "Crash"

    invoke-virtual {p0, p1, v8}, Lcom/idelan/app/crash/CustomCrashHandler;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6c

    .line 203
    :try_start_56
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 204
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 205
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 206
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6c} :catch_93

    .line 212
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_6c
    :goto_6c
    return-void

    .line 187
    .end local v2    # "errorInfo":Ljava/lang/String;
    :cond_6d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 189
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 190
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ">>>>>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 207
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .restart local v2    # "errorInfo":Ljava/lang/String;
    :catch_93
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c
.end method


# virtual methods
.method public setCustomCrashHanler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "isWriteLocation"    # Z

    .prologue
    .line 112
    iput-object p1, p0, Lcom/idelan/app/crash/CustomCrashHandler;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/idelan/app/crash/CustomCrashHandler;->errorHM:Ljava/util/HashMap;

    .line 114
    iput-object p2, p0, Lcom/idelan/app/crash/CustomCrashHandler;->uri:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/idelan/app/crash/CustomCrashHandler;->appId:Ljava/lang/String;

    .line 116
    iput-boolean p4, p0, Lcom/idelan/app/crash/CustomCrashHandler;->isWriteLocation:Z

    .line 117
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 118
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/idelan/app/crash/CustomCrashHandler;->username:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    invoke-direct {p0, p2}, Lcom/idelan/app/crash/CustomCrashHandler;->handleException(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

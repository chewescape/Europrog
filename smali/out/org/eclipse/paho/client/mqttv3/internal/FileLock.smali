.class public Lorg/eclipse/paho/client/mqttv3/internal/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"


# instance fields
.field private file:Ljava/io/RandomAccessFile;

.field private fileLock:Ljava/lang/Object;

.field private lockFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 11
    .param p1, "clientDir"    # Ljava/io/File;
    .param p2, "lockFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    .line 47
    const-string v4, "java.nio.channels.FileLock"

    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 49
    :try_start_13
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    .line 50
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getChannel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 51
    .local v2, "m":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "channel":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "tryLock"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 53
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_4c} :catch_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_4c} :catch_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_4c} :catch_63

    .line 61
    .end local v0    # "channel":Ljava/lang/Object;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_4c
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    if-nez v4, :cond_67

    .line 63
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->release()V

    .line 64
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Problem obtaining file lock"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :catch_5b
    move-exception v3

    .line 55
    .local v3, "nsme":Ljava/lang/NoSuchMethodException;
    iput-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    goto :goto_4c

    .line 56
    .end local v3    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_5f
    move-exception v1

    .line 57
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    iput-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    goto :goto_4c

    .line 58
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_63
    move-exception v1

    .line 59
    .local v1, "iae":Ljava/lang/IllegalAccessException;
    iput-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    goto :goto_4c

    .line 67
    .end local v1    # "iae":Ljava/lang/IllegalAccessException;
    :cond_67
    return-void
.end method


# virtual methods
.method public release()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 74
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    .line 75
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "release"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 76
    .local v0, "m":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_40

    .line 82
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_2a

    .line 84
    :try_start_23
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_3e

    .line 87
    :goto_28
    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    .line 90
    :cond_2a
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 91
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 93
    :cond_3b
    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    .line 94
    return-void

    .line 85
    :catch_3e
    move-exception v1

    goto :goto_28

    .line 79
    :catch_40
    move-exception v1

    goto :goto_1f
.end method

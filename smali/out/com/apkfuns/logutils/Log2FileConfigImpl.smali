.class Lcom/apkfuns/logutils/Log2FileConfigImpl;
.super Ljava/lang/Object;
.source "Log2FileConfigImpl.java"

# interfaces
.implements Lcom/apkfuns/logutils/Log2FileConfig;


# static fields
.field public static final DEFAULT_LOG_NAME_FORMAT:Ljava/lang/String; = "%d{yyyyMMdd}.txt"

.field private static singleton:Lcom/apkfuns/logutils/Log2FileConfigImpl;


# instance fields
.field private enable:Z

.field private engine:Lcom/apkfuns/logutils/file/LogFileEngine;

.field private fileFilter:Lcom/apkfuns/logutils/file/LogFileFilter;

.field private logFormatName:Ljava/lang/String;

.field private logLevel:I

.field private logPath:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logLevel:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->enable:Z

    .line 25
    const-string v0, "%d{yyyyMMdd}.txt"

    iput-object v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logFormatName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/apkfuns/logutils/Log2FileConfigImpl;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->singleton:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    if-nez v0, :cond_13

    .line 31
    const-class v1, Lcom/apkfuns/logutils/Log2FileConfigImpl;

    monitor-enter v1

    .line 32
    :try_start_7
    sget-object v0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->singleton:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    if-nez v0, :cond_12

    .line 33
    new-instance v0, Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-direct {v0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;-><init>()V

    sput-object v0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->singleton:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    .line 35
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 37
    :cond_13
    sget-object v0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->singleton:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    return-object v0

    .line 35
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public configLog2FileEnable(Z)Lcom/apkfuns/logutils/Log2FileConfig;
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->enable:Z

    .line 43
    return-object p0
.end method

.method public configLog2FileLevel(I)Lcom/apkfuns/logutils/Log2FileConfig;
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logLevel:I

    .line 100
    return-object p0
.end method

.method public configLog2FileNameFormat(Ljava/lang/String;)Lcom/apkfuns/logutils/Log2FileConfig;
    .registers 3
    .param p1, "formatName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 88
    iput-object p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logFormatName:Ljava/lang/String;

    .line 90
    :cond_8
    return-object p0
.end method

.method public configLog2FilePath(Ljava/lang/String;)Lcom/apkfuns/logutils/Log2FileConfig;
    .registers 2
    .param p1, "logPath"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logPath:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public configLogFileEngine(Lcom/apkfuns/logutils/file/LogFileEngine;)Lcom/apkfuns/logutils/Log2FileConfig;
    .registers 2
    .param p1, "engine"    # Lcom/apkfuns/logutils/file/LogFileEngine;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->engine:Lcom/apkfuns/logutils/file/LogFileEngine;

    .line 110
    return-object p0
.end method

.method public configLogFileFilter(Lcom/apkfuns/logutils/file/LogFileFilter;)Lcom/apkfuns/logutils/Log2FileConfig;
    .registers 2
    .param p1, "fileFilter"    # Lcom/apkfuns/logutils/file/LogFileFilter;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->fileFilter:Lcom/apkfuns/logutils/file/LogFileFilter;

    .line 116
    return-object p0
.end method

.method public getDefaultPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 140
    const-string v0, ""

    .line 141
    .local v0, "basePath":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LogUtils"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 144
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Sdcard No Access, please config Log2FilePath"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEngine()Lcom/apkfuns/logutils/file/LogFileEngine;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->engine:Lcom/apkfuns/logutils/file/LogFileEngine;

    return-object v0
.end method

.method public getFileFilter()Lcom/apkfuns/logutils/file/LogFileFilter;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->fileFilter:Lcom/apkfuns/logutils/file/LogFileFilter;

    return-object v0
.end method

.method public getLogFile()Ljava/io/File;
    .registers 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getLogPath()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 123
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getLogFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getLogFormatName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;

    iget-object v1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logFormatName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->doApply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logLevel:I

    return v0
.end method

.method public getLogPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 61
    iget-object v2, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 62
    invoke-virtual {p0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getDefaultPath()Ljava/lang/String;

    move-result-object v2

    .line 82
    :goto_c
    return-object v2

    .line 64
    :cond_d
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 66
    iget-object v2, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logPath:Ljava/lang/String;

    goto :goto_c

    .line 68
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 72
    :cond_3e
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 73
    .local v1, "ret":Z
    if-eqz v1, :cond_4d

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 78
    .end local v1    # "ret":Z
    :cond_4d
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 79
    .restart local v1    # "ret":Z
    if-eqz v1, :cond_56

    .line 80
    iget-object v2, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logPath:Ljava/lang/String;

    goto :goto_c

    .line 82
    :cond_56
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public isEnable()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->enable:Z

    return v0
.end method

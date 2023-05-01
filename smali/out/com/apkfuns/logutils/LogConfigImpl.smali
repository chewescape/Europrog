.class Lcom/apkfuns/logutils/LogConfigImpl;
.super Ljava/lang/Object;
.source "LogConfigImpl.java"

# interfaces
.implements Lcom/apkfuns/logutils/LogConfig;


# static fields
.field private static singleton:Lcom/apkfuns/logutils/LogConfigImpl;


# instance fields
.field private enable:Z

.field private formatTag:Ljava/lang/String;

.field private logLevel:I

.field private methodOffset:I

.field private parseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apkfuns/logutils/Parser;",
            ">;"
        }
    .end annotation
.end field

.field private showBorder:Z

.field private tagPrefix:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->enable:Z

    .line 19
    iput-boolean v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->showBorder:Z

    .line 20
    iput v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->logLevel:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->methodOffset:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->parseList:Ljava/util/List;

    .line 30
    return-void
.end method

.method static getInstance()Lcom/apkfuns/logutils/LogConfigImpl;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/apkfuns/logutils/LogConfigImpl;->singleton:Lcom/apkfuns/logutils/LogConfigImpl;

    if-nez v0, :cond_13

    .line 34
    const-class v1, Lcom/apkfuns/logutils/LogConfigImpl;

    monitor-enter v1

    .line 35
    :try_start_7
    sget-object v0, Lcom/apkfuns/logutils/LogConfigImpl;->singleton:Lcom/apkfuns/logutils/LogConfigImpl;

    if-nez v0, :cond_12

    .line 36
    new-instance v0, Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-direct {v0}, Lcom/apkfuns/logutils/LogConfigImpl;-><init>()V

    sput-object v0, Lcom/apkfuns/logutils/LogConfigImpl;->singleton:Lcom/apkfuns/logutils/LogConfigImpl;

    .line 38
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 40
    :cond_13
    sget-object v0, Lcom/apkfuns/logutils/LogConfigImpl;->singleton:Lcom/apkfuns/logutils/LogConfigImpl;

    return-object v0

    .line 38
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public varargs addParserClass([Ljava/lang/Class;)Lcom/apkfuns/logutils/LogConfig;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/apkfuns/logutils/Parser;",
            ">;)",
            "Lcom/apkfuns/logutils/LogConfig;"
        }
    .end annotation

    .prologue
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/apkfuns/logutils/Parser;>;"
    const/4 v2, 0x0

    .line 93
    array-length v3, p1

    :goto_2
    if-ge v2, v3, :cond_18

    aget-object v0, p1, v2

    .line 95
    .local v0, "cla":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/apkfuns/logutils/Parser;>;"
    :try_start_6
    iget-object v4, p0, Lcom/apkfuns/logutils/LogConfigImpl;->parseList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_13

    .line 93
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 96
    :catch_13
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 100
    .end local v0    # "cla":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/apkfuns/logutils/Parser;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_18
    return-object p0
.end method

.method public configAllowLog(Z)Lcom/apkfuns/logutils/LogConfig;
    .registers 2
    .param p1, "allowLog"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->enable:Z

    .line 46
    return-object p0
.end method

.method public configFormatTag(Ljava/lang/String;)Lcom/apkfuns/logutils/LogConfig;
    .registers 2
    .param p1, "formatTag"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->formatTag:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public configLevel(I)Lcom/apkfuns/logutils/LogConfig;
    .registers 2
    .param p1, "logLevel"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->logLevel:I

    .line 87
    return-object p0
.end method

.method public configMethodOffset(I)Lcom/apkfuns/logutils/LogConfig;
    .registers 2
    .param p1, "offset"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->methodOffset:I

    .line 77
    return-object p0
.end method

.method public configShowBorders(Z)Lcom/apkfuns/logutils/LogConfig;
    .registers 2
    .param p1, "showBorder"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->showBorder:Z

    .line 71
    return-object p0
.end method

.method public configTagPrefix(Ljava/lang/String;)Lcom/apkfuns/logutils/LogConfig;
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->tagPrefix:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public getFormatTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 3
    .param p1, "caller"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->formatTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->formatTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/apkfuns/logutils/pattern/LogPattern;->compile(Ljava/lang/String;)Lcom/apkfuns/logutils/pattern/LogPattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apkfuns/logutils/pattern/LogPattern;->apply(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getLogLevel()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->logLevel:I

    return v0
.end method

.method public getMethodOffset()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->methodOffset:I

    return v0
.end method

.method public getParseList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/apkfuns/logutils/Parser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->parseList:Ljava/util/List;

    return-object v0
.end method

.method public getTagPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->tagPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    const-string v0, "LogUtils"

    .line 112
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->tagPrefix:Ljava/lang/String;

    goto :goto_a
.end method

.method public isEnable()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->enable:Z

    return v0
.end method

.method public isShowBorder()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->showBorder:Z

    return v0
.end method

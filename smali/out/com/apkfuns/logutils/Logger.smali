.class Lcom/apkfuns/logutils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/apkfuns/logutils/Printer;


# instance fields
.field private final localTags:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

.field private mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/apkfuns/logutils/Logger;->localTags:Ljava/lang/ThreadLocal;

    .line 41
    invoke-static {}, Lcom/apkfuns/logutils/LogConfigImpl;->getInstance()Lcom/apkfuns/logutils/LogConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    .line 42
    invoke-static {}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getInstance()Lcom/apkfuns/logutils/Log2FileConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    .line 43
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    sget-object v1, Lcom/apkfuns/logutils/Constant;->DEFAULT_PARSE_CLASS:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/apkfuns/logutils/LogConfigImpl;->addParserClass([Ljava/lang/Class;)Lcom/apkfuns/logutils/LogConfig;

    .line 44
    return-void
.end method

.method private generateTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/apkfuns/logutils/Logger;->localTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "tempTag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 138
    iget-object v1, p0, Lcom/apkfuns/logutils/Logger;->localTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 141
    .end local v0    # "tempTag":Ljava/lang/String;
    :goto_13
    return-object v0

    .restart local v0    # "tempTag":Ljava/lang/String;
    :cond_14
    iget-object v1, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v1}, Lcom/apkfuns/logutils/LogConfigImpl;->getTagPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private getCurrentStackTrace()Ljava/lang/StackTraceElement;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 151
    .local v2, "trace":[Ljava/lang/StackTraceElement;
    const-class v3, Lcom/apkfuns/logutils/LogUtils;

    invoke-direct {p0, v2, v3}, Lcom/apkfuns/logutils/Logger;->getStackOffset([Ljava/lang/StackTraceElement;Ljava/lang/Class;)I

    move-result v1

    .line 152
    .local v1, "stackOffset":I
    if-ne v1, v4, :cond_1b

    .line 153
    const-class v3, Lcom/apkfuns/logutils/Logger;

    invoke-direct {p0, v2, v3}, Lcom/apkfuns/logutils/Logger;->getStackOffset([Ljava/lang/StackTraceElement;Ljava/lang/Class;)I

    move-result v1

    .line 154
    if-ne v1, v4, :cond_1b

    .line 155
    const/4 v0, 0x0

    .line 162
    :goto_1a
    return-object v0

    .line 158
    :cond_1b
    iget-object v3, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v3}, Lcom/apkfuns/logutils/LogConfigImpl;->getMethodOffset()I

    move-result v3

    if-lez v3, :cond_2a

    .line 159
    iget-object v3, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v3}, Lcom/apkfuns/logutils/LogConfigImpl;->getMethodOffset()I

    move-result v3

    add-int/2addr v1, v3

    .line 161
    :cond_2a
    aget-object v0, v2, v1

    .line 162
    .local v0, "caller":Ljava/lang/StackTraceElement;
    goto :goto_1a
.end method

.method private getStackOffset([Ljava/lang/StackTraceElement;Ljava/lang/Class;)I
    .registers 8
    .param p1, "trace"    # [Ljava/lang/StackTraceElement;
    .param p2, "cla"    # Ljava/lang/Class;

    .prologue
    .line 186
    const/4 v1, 0x5

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3c

    .line 187
    aget-object v0, p1, v1

    .line 188
    .local v0, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "name":Ljava/lang/String;
    const-class v3, Lcom/apkfuns/logutils/Logger;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2e

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/apkfuns/logutils/Logger;

    .line 190
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 186
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    :cond_2e
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 194
    add-int/lit8 v1, v1, 0x1

    move v3, v1

    .line 197
    .end local v0    # "e":Ljava/lang/StackTraceElement;
    .end local v2    # "name":Ljava/lang/String;
    :goto_3b
    return v3

    :cond_3c
    const/4 v3, -0x1

    goto :goto_3b
.end method

.method private getTopStackInfo()Ljava/lang/String;
    .registers 9

    .prologue
    .line 171
    iget-object v5, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->getCurrentStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/apkfuns/logutils/LogConfigImpl;->getFormatTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "customTag":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 182
    .end local v2    # "customTag":Ljava/lang/String;
    :goto_c
    return-object v2

    .line 175
    .restart local v2    # "customTag":Ljava/lang/String;
    :cond_d
    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->getCurrentStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 176
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "stackTrace":Ljava/lang/String;
    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 178
    const-string v4, "%s.%s%s"

    .line 179
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "callerClazzName":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 182
    goto :goto_c
.end method

.method private logObject(ILjava/lang/Object;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 127
    invoke-static {p2}, Lcom/apkfuns/logutils/utils/ObjectUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method private varargs logString(ILjava/lang/String;Z[Ljava/lang/Object;)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "isPart"    # Z
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x4

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x3

    .line 71
    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->generateTag()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "tag":Ljava/lang/String;
    if-nez p3, :cond_15

    .line 73
    array-length v4, p4

    if-lez v4, :cond_12

    .line 75
    :try_start_e
    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_e .. :try_end_11} :catch_116

    move-result-object p2

    .line 78
    :cond_12
    :goto_12
    invoke-direct {p0, v2, p2, p1}, Lcom/apkfuns/logutils/Logger;->writeToFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    :cond_15
    iget-object v4, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v4}, Lcom/apkfuns/logutils/LogConfigImpl;->isEnable()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 117
    :cond_1d
    :goto_1d
    return-void

    .line 83
    :cond_1e
    iget-object v4, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v4}, Lcom/apkfuns/logutils/LogConfigImpl;->getLogLevel()I

    move-result v4

    if-lt p1, v4, :cond_1d

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc00

    if-le v4, v5, :cond_88

    .line 87
    iget-object v3, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v3}, Lcom/apkfuns/logutils/LogConfigImpl;->isShowBorder()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 88
    invoke-static {v6}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->getTopStackInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {v7}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_60
    invoke-static {p2}, Lcom/apkfuns/logutils/utils/Utils;->largeStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "subMsg":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v6, p4}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;Z[Ljava/lang/Object;)V

    goto :goto_68

    .line 95
    .end local v1    # "subMsg":Ljava/lang/String;
    :cond_78
    iget-object v3, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v3}, Lcom/apkfuns/logutils/LogConfigImpl;->isShowBorder()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 96
    invoke-static {v9}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 100
    :cond_88
    iget-object v4, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v4}, Lcom/apkfuns/logutils/LogConfigImpl;->isShowBorder()Z

    move-result v4

    if-eqz v4, :cond_111

    .line 101
    if-eqz p3, :cond_b8

    .line 102
    sget-object v4, Lcom/apkfuns/logutils/Constant;->BR:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_99
    if-ge v3, v5, :cond_1d

    aget-object v0, v4, v3

    .line 103
    .local v0, "sub":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v2, v6}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 106
    .end local v0    # "sub":Ljava/lang/String;
    :cond_b8
    invoke-static {v6}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->getTopStackInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {v7}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v4, Lcom/apkfuns/logutils/Constant;->BR:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_e9
    if-ge v3, v5, :cond_108

    aget-object v0, v4, v3

    .line 110
    .restart local v0    # "sub":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v2, v6}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    .line 112
    .end local v0    # "sub":Ljava/lang/String;
    :cond_108
    invoke-static {v9}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 115
    :cond_111
    invoke-direct {p0, p1, v2, p2}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 76
    :catch_116
    move-exception v4

    goto/16 :goto_12
.end method

.method private varargs declared-synchronized logString(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 67
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;Z[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private printLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v0}, Lcom/apkfuns/logutils/LogConfigImpl;->isShowBorder()Z

    move-result v0

    if-nez v0, :cond_23

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->getTopStackInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 325
    :cond_23
    packed-switch p1, :pswitch_data_40

    .line 347
    :goto_26
    return-void

    .line 327
    :pswitch_27
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 330
    :pswitch_2b
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 333
    :pswitch_2f
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 336
    :pswitch_33
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 339
    :pswitch_37
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 342
    :pswitch_3b
    invoke-static {p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 325
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
    .end packed-switch
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "logContent"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 356
    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v2}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->isEnable()Z

    move-result v2

    if-nez v2, :cond_9

    .line 382
    :cond_8
    :goto_8
    return-void

    .line 359
    :cond_9
    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v2}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getFileFilter()Lcom/apkfuns/logutils/file/LogFileFilter;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    .line 360
    invoke-virtual {v2}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getFileFilter()Lcom/apkfuns/logutils/file/LogFileFilter;

    move-result-object v2

    invoke-interface {v2, p3, p1, p2}, Lcom/apkfuns/logutils/file/LogFileFilter;->accept(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 363
    :cond_1d
    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v2}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getLogLevel()I

    move-result v2

    if-lt p3, v2, :cond_8

    .line 366
    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v2}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getLogPath()Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 368
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3d

    .line 369
    const-string v2, "LogUtils write to logFile error. No sdcard access permission?"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 372
    :cond_3d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Log2FilePath is an invalid path"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_45
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v2}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getLogFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .local v0, "logFile":Ljava/io/File;
    new-instance v1, Lcom/apkfuns/logutils/file/LogFileParam;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 376
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    move v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/apkfuns/logutils/file/LogFileParam;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 377
    .local v1, "param":Lcom/apkfuns/logutils/file/LogFileParam;
    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v2}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getEngine()Lcom/apkfuns/logutils/file/LogFileEngine;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 378
    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v2}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getEngine()Lcom/apkfuns/logutils/file/LogFileEngine;

    move-result-object v2

    invoke-interface {v2, v0, p2, v1}, Lcom/apkfuns/logutils/file/LogFileEngine;->writeToFile(Ljava/io/File;Ljava/lang/String;Lcom/apkfuns/logutils/file/LogFileParam;)V

    goto :goto_8

    .line 380
    :cond_75
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "LogFileEngine must not Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 207
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    .line 208
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 202
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 217
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    .line 218
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 212
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 237
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    .line 238
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 232
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public json(Ljava/lang/String;)V
    .registers 9
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 268
    const/4 v1, 0x4

    .line 269
    .local v1, "indent":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 270
    const-string v5, "JSON{json is empty}"

    invoke-virtual {p0, v5}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V

    .line 286
    :cond_c
    :goto_c
    return-void

    .line 274
    :cond_d
    :try_start_d
    const-string v5, "{"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 275
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 276
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_c

    .line 283
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "msg":Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 284
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\njson = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/apkfuns/logutils/Logger;->e(Ljava/lang/Object;)V

    goto :goto_c

    .line 278
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_42
    :try_start_42
    const-string v5, "["

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 279
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 280
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 281
    .restart local v4    # "msg":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_56} :catch_22

    goto :goto_c
.end method

.method public setTag(Ljava/lang/String;)Lcom/apkfuns/logutils/Printer;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v0}, Lcom/apkfuns/logutils/LogConfigImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 54
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->localTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 56
    :cond_13
    return-object p0
.end method

.method public v(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    .line 248
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 227
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    .line 228
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 222
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public wtf(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 257
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    .line 258
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 252
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method public xml(Ljava/lang/String;)V
    .registers 9
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 297
    const-string v4, "XML{xml is empty}"

    invoke-virtual {p0, v4}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V

    .line 311
    :goto_b
    return-void

    .line 301
    :cond_c
    :try_start_c
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 302
    .local v2, "xmlInput":Ljavax/xml/transform/Source;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 303
    .local v3, "xmlOutput":Ljavax/xml/transform/stream/StreamResult;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 304
    .local v1, "transformer":Ljavax/xml/transform/Transformer;
    const-string v4, "indent"

    const-string v5, "yes"

    invoke-virtual {v1, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string v5, "2"

    invoke-virtual {v1, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 307
    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ">"

    const-string v6, ">\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V
    :try_end_4c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_4c} :catch_4d

    goto :goto_b

    .line 308
    .end local v1    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v2    # "xmlInput":Ljavax/xml/transform/Source;
    .end local v3    # "xmlOutput":Ljavax/xml/transform/stream/StreamResult;
    :catch_4d
    move-exception v0

    .line 309
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\nxml = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/apkfuns/logutils/Logger;->e(Ljava/lang/Object;)V

    goto :goto_b
.end method

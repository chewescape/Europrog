.class public final Lcom/apkfuns/logutils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

.field private static logConfig:Lcom/apkfuns/logutils/LogConfigImpl;

.field private static printer:Lcom/apkfuns/logutils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Lcom/apkfuns/logutils/Logger;

    invoke-direct {v0}, Lcom/apkfuns/logutils/Logger;-><init>()V

    sput-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    .line 11
    invoke-static {}, Lcom/apkfuns/logutils/LogConfigImpl;->getInstance()Lcom/apkfuns/logutils/LogConfigImpl;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/LogUtils;->logConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    .line 12
    invoke-static {}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getInstance()Lcom/apkfuns/logutils/Log2FileConfigImpl;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/LogUtils;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 61
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 57
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 103
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0}, Lcom/apkfuns/logutils/Logger;->e(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 99
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/apkfuns/logutils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public static getLog2FileConfig()Lcom/apkfuns/logutils/Log2FileConfig;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    return-object v0
.end method

.method public static getLogConfig()Lcom/apkfuns/logutils/LogConfig;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->logConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    return-object v0
.end method

.method public static i(Ljava/lang/Object;)V
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 75
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0}, Lcom/apkfuns/logutils/Logger;->i(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/apkfuns/logutils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static json(Ljava/lang/String;)V
    .registers 2
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0}, Lcom/apkfuns/logutils/Logger;->json(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static tag(Ljava/lang/String;)Lcom/apkfuns/logutils/Printer;
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0}, Lcom/apkfuns/logutils/Logger;->setTag(Ljava/lang/String;)Lcom/apkfuns/logutils/Printer;

    move-result-object v0

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)V
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 46
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0}, Lcom/apkfuns/logutils/Logger;->v(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 42
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/apkfuns/logutils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 89
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0}, Lcom/apkfuns/logutils/Logger;->w(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 85
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/apkfuns/logutils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public static wtf(Ljava/lang/Object;)V
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 117
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0}, Lcom/apkfuns/logutils/Logger;->wtf(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 113
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/apkfuns/logutils/Logger;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public static xml(Ljava/lang/String;)V
    .registers 2
    .param p0, "xml"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v0, Lcom/apkfuns/logutils/LogUtils;->printer:Lcom/apkfuns/logutils/Logger;

    invoke-virtual {v0, p0}, Lcom/apkfuns/logutils/Logger;->xml(Ljava/lang/String;)V

    .line 135
    return-void
.end method

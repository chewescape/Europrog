.class public abstract Lcom/apkfuns/logutils/pattern/LogPattern;
.super Ljava/lang/Object;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;,
        Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;,
        Lcom/apkfuns/logutils/pattern/LogPattern$ThreadNameLogPattern;,
        Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;,
        Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;,
        Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;,
        Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;
    }
.end annotation


# instance fields
.field private final count:I

.field private final length:I


# direct methods
.method private constructor <init>(II)V
    .registers 3
    .param p1, "count"    # I
    .param p2, "length"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern;->count:I

    .line 143
    iput p2, p0, Lcom/apkfuns/logutils/pattern/LogPattern;->length:I

    .line 144
    return-void
.end method

.method synthetic constructor <init>(IILcom/apkfuns/logutils/pattern/LogPattern$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/apkfuns/logutils/pattern/LogPattern$1;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/apkfuns/logutils/pattern/LogPattern;-><init>(II)V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/apkfuns/logutils/pattern/LogPattern;
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 159
    if-nez p0, :cond_5

    const/4 v1, 0x0

    .line 161
    :goto_4
    return-object v1

    .line 159
    :cond_5
    :try_start_5
    new-instance v1, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;

    invoke-direct {v1}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;-><init>()V

    invoke-virtual {v1, p0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->compile(Ljava/lang/String;)Lcom/apkfuns/logutils/pattern/LogPattern;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_4

    .line 160
    :catch_f
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    invoke-direct {v1, v2, v2, p0}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public final apply(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 5
    .param p1, "caller"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/apkfuns/logutils/pattern/LogPattern;->doApply(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "string":Ljava/lang/String;
    iget v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern;->count:I

    iget v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern;->length:I

    invoke-static {v0, v1, v2}, Lcom/apkfuns/logutils/utils/Utils;->shorten(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract doApply(Ljava/lang/StackTraceElement;)Ljava/lang/String;
.end method

.method protected isCallerNeeded()Z
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

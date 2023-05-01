.class public Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;
.super Lcom/apkfuns/logutils/pattern/LogPattern;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkfuns/logutils/pattern/LogPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConcatenateLogPattern"
.end annotation


# instance fields
.field private final patternList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apkfuns/logutils/pattern/LogPattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .registers 5
    .param p1, "count"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/apkfuns/logutils/pattern/LogPattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, "patternList":Ljava/util/List;, "Ljava/util/List<Lcom/apkfuns/logutils/pattern/LogPattern;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apkfuns/logutils/pattern/LogPattern;-><init>(IILcom/apkfuns/logutils/pattern/LogPattern$1;)V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->patternList:Ljava/util/List;

    .line 101
    return-void
.end method


# virtual methods
.method public addPattern(Lcom/apkfuns/logutils/pattern/LogPattern;)V
    .registers 3
    .param p1, "pattern"    # Lcom/apkfuns/logutils/pattern/LogPattern;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->patternList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method protected doApply(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 6
    .param p1, "caller"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->patternList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkfuns/logutils/pattern/LogPattern;

    .line 111
    .local v1, "pattern":Lcom/apkfuns/logutils/pattern/LogPattern;
    invoke-virtual {v1, p1}, Lcom/apkfuns/logutils/pattern/LogPattern;->apply(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 113
    .end local v1    # "pattern":Lcom/apkfuns/logutils/pattern/LogPattern;
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected isCallerNeeded()Z
    .registers 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;->patternList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkfuns/logutils/pattern/LogPattern;

    .line 119
    .local v0, "pattern":Lcom/apkfuns/logutils/pattern/LogPattern;
    invoke-virtual {v0}, Lcom/apkfuns/logutils/pattern/LogPattern;->isCallerNeeded()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 120
    const/4 v1, 0x1

    .line 123
    .end local v0    # "pattern":Lcom/apkfuns/logutils/pattern/LogPattern;
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

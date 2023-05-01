.class public Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;
.super Ljava/lang/Object;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkfuns/logutils/pattern/LogPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Log2FileNamePattern"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private patternString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "patternString"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->patternString:Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->date:Ljava/util/Date;

    .line 273
    return-void
.end method


# virtual methods
.method public doApply()Ljava/lang/String;
    .registers 8

    .prologue
    .line 276
    iget-object v5, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->patternString:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 277
    const/4 v4, 0x0

    .line 287
    :cond_5
    return-object v4

    .line 279
    :cond_6
    iget-object v4, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->patternString:Ljava/lang/String;

    .line 280
    .local v4, "temp":Ljava/lang/String;
    sget-object v5, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->DATE_PATTERN_SHORT:Ljava/util/regex/Pattern;

    iget-object v6, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->patternString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 281
    .local v3, "matcher":Ljava/util/regex/Matcher;
    :goto_10
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 282
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "format":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->date:Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "dateString":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 286
    goto :goto_10
.end method

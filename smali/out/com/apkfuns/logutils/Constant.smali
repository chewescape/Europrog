.class public Lcom/apkfuns/logutils/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final BR:Ljava/lang/String;

.field public static final DEFAULT_PARSE_CLASS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/apkfuns/logutils/Parser;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINE_MAX:I = 0xc00

.field public static final MAX_CHILD_LEVEL:I = 0x2

.field public static final MIN_STACK_OFFSET:I = 0x5

.field public static final SPACE:Ljava/lang/String; = "\t"

.field public static final STRING_OBJECT_NULL:Ljava/lang/String; = "Object[object is null]"

.field public static final TAG:Ljava/lang/String; = "LogUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkfuns/logutils/Constant;->BR:Ljava/lang/String;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/apkfuns/logutils/parser/BundleParse;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/apkfuns/logutils/parser/IntentParse;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/apkfuns/logutils/parser/CollectionParse;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/apkfuns/logutils/parser/MapParse;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/apkfuns/logutils/parser/ThrowableParse;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/apkfuns/logutils/parser/ReferenceParse;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/apkfuns/logutils/parser/MessageParse;

    aput-object v2, v0, v1

    sput-object v0, Lcom/apkfuns/logutils/Constant;->DEFAULT_PARSE_CLASS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getParsers()Ljava/util/List;
    .registers 1
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
    .line 49
    invoke-static {}, Lcom/apkfuns/logutils/LogConfigImpl;->getInstance()Lcom/apkfuns/logutils/LogConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkfuns/logutils/LogConfigImpl;->getParseList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

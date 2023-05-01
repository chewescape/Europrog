.class public Lcom/idelan/app/push/PushIConstants;
.super Ljava/lang/Object;
.source "PushIConstants.java"


# static fields
.field public static PushAddress:Ljava/lang/String;

.field public static PushAppId:Ljava/lang/String;

.field public static PushAppTitle:Ljava/lang/String;

.field public static PushCorpId:Ljava/lang/String;

.field public static PushIcon:I

.field public static PushKey:Ljava/lang/String;

.field public static PushPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-string v0, "\u5fb3\u6f9c\u63a8\u9001\u6d88\u606f"

    sput-object v0, Lcom/idelan/app/push/PushIConstants;->PushAppTitle:Ljava/lang/String;

    .line 8
    const-string v0, "acc.psh.565jd.com"

    sput-object v0, Lcom/idelan/app/push/PushIConstants;->PushAddress:Ljava/lang/String;

    .line 10
    const/16 v0, 0x3341

    sput v0, Lcom/idelan/app/push/PushIConstants;->PushPort:I

    .line 12
    const-string v0, "1"

    sput-object v0, Lcom/idelan/app/push/PushIConstants;->PushAppId:Ljava/lang/String;

    .line 14
    const-string v0, "1"

    sput-object v0, Lcom/idelan/app/push/PushIConstants;->PushCorpId:Ljava/lang/String;

    .line 16
    const-string v0, "10001234561"

    sput-object v0, Lcom/idelan/app/push/PushIConstants;->PushKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;
.super Ljava/lang/Object;
.source "CometFlag.java"


# instance fields
.field public childProtected:Z

.field private flags:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 12
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;->flags:[B

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;->flags:[B

    array-length v1, v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    :cond_b
    const/4 v0, 0x0

    .line 18
    :goto_c
    return-object v0

    .line 13
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;->flags:[B

    .line 14
    .local v0, "rawValue":[B
    iget-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;->childProtected:Z

    if-eqz v1, :cond_1b

    .line 15
    aget-byte v1, v0, v3

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_c

    .line 17
    :cond_1b
    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_c
.end method

.method public toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;
    .registers 5
    .param p1, "rawValue"    # [B

    .prologue
    const/4 v0, 0x0

    .line 22
    if-eqz p1, :cond_12

    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    .line 23
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;->flags:[B

    .line 24
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;->childProtected:Z

    .line 26
    :cond_12
    return-object p0
.end method

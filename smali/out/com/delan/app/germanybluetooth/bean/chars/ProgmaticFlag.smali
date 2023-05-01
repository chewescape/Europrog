.class public Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;
.super Ljava/lang/Object;
.source "ProgmaticFlag.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public childProof:Z

.field public mode:I

.field private reserved:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;->mode:I

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 28
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 29
    .local v0, "rawValue":[B
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;->mode:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 30
    iget-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;->childProof:Z

    if-eqz v1, :cond_14

    .line 31
    aget-byte v1, v0, v3

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 32
    :cond_14
    aget-byte v1, v0, v3

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;->reserved:I

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 33
    return-object v0
.end method

.method public toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;
    .registers 5
    .param p1, "rawValue"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-eqz p1, :cond_1b

    array-length v2, p1

    if-ne v2, v0, :cond_1b

    .line 38
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;->mode:I

    .line 39
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1c

    :goto_13
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;->childProof:Z

    .line 40
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xe0

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;->reserved:I

    .line 42
    :cond_1b
    return-object p0

    :cond_1c
    move v0, v1

    .line 39
    goto :goto_13
.end method

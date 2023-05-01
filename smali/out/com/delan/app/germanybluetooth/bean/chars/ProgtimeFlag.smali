.class public Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;
.super Ljava/lang/Object;
.source "ProgtimeFlag.java"


# instance fields
.field public childProof:Z

.field public mode:I

.field private reserved:I

.field public setOnInManual:Z

.field public stateInAuto:Z


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

    .line 31
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 32
    .local v0, "rawValue":[B
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->mode:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 33
    iget-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->childProof:Z

    if-eqz v1, :cond_14

    .line 34
    aget-byte v1, v0, v3

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 35
    :cond_14
    iget-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->setOnInManual:Z

    if-eqz v1, :cond_1f

    .line 36
    aget-byte v1, v0, v3

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 37
    :cond_1f
    iget-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->stateInAuto:Z

    if-eqz v1, :cond_2a

    .line 38
    aget-byte v1, v0, v3

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 39
    :cond_2a
    aget-byte v1, v0, v3

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->reserved:I

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 40
    return-object v0
.end method

.method public toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;
    .registers 5
    .param p1, "rawValue"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-eqz p1, :cond_2d

    array-length v0, p1

    if-ne v0, v1, :cond_2d

    .line 45
    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->mode:I

    .line 46
    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->childProof:Z

    .line 47
    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_30

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->setOnInManual:Z

    .line 48
    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_32

    :goto_25
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->stateInAuto:Z

    .line 49
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xe0

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->reserved:I

    .line 51
    :cond_2d
    return-object p0

    :cond_2e
    move v0, v2

    .line 46
    goto :goto_14

    :cond_30
    move v0, v2

    .line 47
    goto :goto_1d

    :cond_32
    move v1, v2

    .line 48
    goto :goto_25
.end method

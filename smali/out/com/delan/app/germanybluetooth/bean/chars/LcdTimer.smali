.class public Lcom/delan/app/germanybluetooth/bean/chars/LcdTimer;
.super Ljava/lang/Object;
.source "LcdTimer.java"


# instance fields
.field public current:I

.field public preload:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "rawValue"    # [B

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-eqz p1, :cond_9

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    .line 16
    :cond_9
    :goto_9
    return-void

    .line 14
    :cond_a
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/LcdTimer;->preload:I

    .line 15
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/LcdTimer;->current:I

    goto :goto_9
.end method

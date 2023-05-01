.class public Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
.super Ljava/lang/Object;
.source "ProgtimeProgmaticSwitchPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public h1:I

.field public h2:I

.field public h3:I

.field public h4:I

.field public h5:I

.field public h6:I

.field public h7:I

.field public h8:I

.field public m1:I

.field public m2:I

.field public m3:I

.field public m4:I

.field public m5:I

.field public m6:I

.field public m7:I

.field public m8:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateProgress(II)I
    .registers 4
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .prologue
    .line 172
    mul-int/lit8 v0, p0, 0x6

    div-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method public static hourMinuteToStr(Landroid/content/Context;II)Ljava/lang/String;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 96
    const-string v0, "%1$02d:%2$02d"

    .line 97
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x80

    if-eq p2, v1, :cond_22

    if-ltz p1, :cond_22

    const/16 v1, 0x18

    if-gt p1, v1, :cond_22

    .line 98
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    :goto_21
    return-object v1

    :cond_22
    const v1, 0x7f060090

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method public static numToTime(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "num"    # I

    .prologue
    .line 104
    const-string v0, "%1$02d:%2$02d"

    .line 105
    .local v0, "str":Ljava/lang/String;
    if-ltz p1, :cond_24

    const/16 v1, 0x90

    if-gt p1, v1, :cond_24

    .line 106
    mul-int/lit8 p1, p1, 0xa

    .line 107
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    rem-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 109
    :goto_23
    return-object v1

    :cond_24
    const v1, 0x7f060090

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method


# virtual methods
.method public clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    .registers 3

    .prologue
    .line 131
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    .line 132
    .local v0, "switchPoint":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m1:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m1:I

    .line 133
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m2:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m2:I

    .line 134
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    .line 135
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    .line 136
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    .line 137
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    .line 138
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    .line 139
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    .line 140
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h1:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h1:I

    .line 141
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h2:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h2:I

    .line 142
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    .line 143
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    .line 144
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h5:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h5:I

    .line 145
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h6:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h6:I

    .line 146
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h7:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h7:I

    .line 147
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h8:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h8:I

    .line 148
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    return-object v0
.end method

.method public generateRandomValue()V
    .registers 8

    .prologue
    .line 176
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 179
    .local v3, "r":Ljava/util/Random;
    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 180
    .local v2, "i":I
    mul-int/lit8 v1, v2, 0xa

    .line 181
    .local v1, "endMinute":I
    const/16 v6, 0x18

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 182
    move v0, v2

    .line 184
    .local v0, "endHour":I
    mul-int/lit8 v6, v0, 0x6

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 185
    div-int/lit8 v4, v2, 0x6

    .line 186
    .local v4, "startHour":I
    rem-int/lit8 v6, v4, 0x6

    mul-int/lit8 v5, v6, 0xa

    .line 187
    .local v5, "startMinute":I
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    packed-switch v6, :pswitch_data_50

    .line 213
    :goto_2a
    return-void

    .line 189
    :pswitch_2b
    iput v5, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m1:I

    .line 190
    iput v4, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h1:I

    .line 191
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m2:I

    .line 192
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h2:I

    goto :goto_2a

    .line 195
    :pswitch_34
    iput v5, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    .line 196
    iput v4, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    .line 197
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    .line 198
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    goto :goto_2a

    .line 201
    :pswitch_3d
    iput v5, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    .line 202
    iput v4, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h5:I

    .line 203
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    .line 204
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h6:I

    goto :goto_2a

    .line 207
    :pswitch_46
    iput v5, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    .line 208
    iput v4, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h7:I

    .line 209
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    .line 210
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h8:I

    goto :goto_2a

    .line 187
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_34
        :pswitch_3d
        :pswitch_46
    .end packed-switch
.end method

.method public getBytes()[B
    .registers 4

    .prologue
    .line 51
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 52
    .local v0, "rawValue":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m1:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 53
    const/4 v1, 0x1

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h1:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 54
    const/4 v1, 0x2

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m2:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 55
    const/4 v1, 0x3

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h2:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 56
    const/4 v1, 0x4

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 57
    const/4 v1, 0x5

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 58
    const/4 v1, 0x6

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 59
    const/4 v1, 0x7

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 60
    const/16 v1, 0x8

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 61
    const/16 v1, 0x9

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h5:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 62
    const/16 v1, 0xa

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 63
    const/16 v1, 0xb

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h6:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 64
    const/16 v1, 0xc

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 65
    const/16 v1, 0xd

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h7:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 66
    const/16 v1, 0xe

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 67
    const/16 v1, 0xf

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h8:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 68
    return-object v0
.end method

.method public isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z
    .registers 4
    .param p1, "switchPoint"    # Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .prologue
    .line 152
    if-eqz p1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m1:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m1:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m2:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m2:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h1:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h1:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h2:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h2:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h5:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h5:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h6:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h6:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h7:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h7:I

    if-ne v0, v1, :cond_64

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h8:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h8:I

    if-ne v0, v1, :cond_64

    const/4 v0, 0x1

    :goto_63
    return v0

    :cond_64
    const/4 v0, 0x0

    goto :goto_63
.end method

.method public on4PeriodsPerDayChange(Z)V
    .registers 4
    .param p1, "on"    # Z

    .prologue
    const/16 v1, 0x80

    const/4 v0, 0x0

    .line 113
    if-eqz p1, :cond_e

    .line 114
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    .line 115
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    .line 116
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    .line 117
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    .line 124
    :goto_d
    return-void

    .line 119
    :cond_e
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    .line 120
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    .line 121
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    .line 122
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    goto :goto_d
.end method

.method public toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    .registers 5
    .param p1, "rawValue"    # [B

    .prologue
    .line 72
    if-eqz p1, :cond_7

    array-length v1, p1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_8

    .line 92
    :cond_7
    :goto_7
    return-object p0

    .line 75
    :cond_8
    invoke-static {p1}, Lutils/NumberConvert;->byteArray2IntArray([B)[I

    move-result-object v0

    .line 76
    .local v0, "intValue":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m1:I

    .line 77
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h1:I

    .line 78
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m2:I

    .line 79
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h2:I

    .line 80
    const/4 v1, 0x4

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    .line 81
    const/4 v1, 0x5

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    .line 82
    const/4 v1, 0x6

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    .line 83
    const/4 v1, 0x7

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    .line 84
    const/16 v1, 0x8

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    .line 85
    const/16 v1, 0x9

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h5:I

    .line 86
    const/16 v1, 0xa

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    .line 87
    const/16 v1, 0xb

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h6:I

    .line 88
    const/16 v1, 0xc

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    .line 89
    const/16 v1, 0xd

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h7:I

    .line 90
    const/16 v1, 0xe

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    .line 91
    const/16 v1, 0xf

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h8:I

    goto :goto_7
.end method

.method public weatherIs4PeriodsPerDay()Z
    .registers 3

    .prologue
    const/16 v1, 0x80

    .line 127
    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    if-eq v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

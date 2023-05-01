.class Lcom/idelan/app/Util/ACache$Utils;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/Util/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Utils"
.end annotation


# static fields
.field private static final mSeparator:C = ' '


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 4
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 877
    if-nez p0, :cond_4

    .line 878
    const/4 v1, 0x0

    .line 882
    :goto_3
    return-object v1

    .line 880
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 881
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 882
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_3
.end method

.method private static Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "b"    # [B

    .prologue
    .line 889
    array-length v0, p0

    if-nez v0, :cond_5

    .line 890
    const/4 v0, 0x0

    .line 892
    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4
.end method

.method static synthetic access$0(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 806
    invoke-static {p0, p1}, Lcom/idelan/app/Util/ACache$Utils;->newStringWithDateInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 780
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->isDue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 818
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->clearDateInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(I[B)[B
    .registers 3

    .prologue
    .line 810
    invoke-static {p0, p1}, Lcom/idelan/app/Util/ACache$Utils;->newByteArrayWithDateInfo(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4([B)Z
    .registers 2

    .prologue
    .line 790
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->isDue([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5([B)[B
    .registers 2

    .prologue
    .line 825
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->clearDateInfo([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Landroid/graphics/Bitmap;)[B
    .registers 2

    .prologue
    .line 876
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7([B)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 888
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 898
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 921
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 922
    if-nez p0, :cond_4

    .line 923
    const/4 v1, 0x0

    .line 927
    :goto_3
    return-object v1

    .line 925
    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 926
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 927
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method private static clearDateInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "strInfo"    # Ljava/lang/String;

    .prologue
    .line 819
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/idelan/app/Util/ACache$Utils;->hasDateInfo([B)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 820
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 822
    :cond_1c
    return-object p0
.end method

.method private static clearDateInfo([B)[B
    .registers 3
    .param p0, "data"    # [B

    .prologue
    .line 826
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->hasDateInfo([B)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 827
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/idelan/app/Util/ACache$Utils;->indexOf([BC)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/idelan/app/Util/ACache$Utils;->copyOfRange([BII)[B

    move-result-object p0

    .line 829
    .end local p0    # "data":[B
    :cond_13
    return-object p0
.end method

.method private static copyOfRange([BII)[B
    .registers 8
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 855
    sub-int v1, p2, p1

    .line 856
    .local v1, "newLength":I
    if-gez v1, :cond_21

    .line 857
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 858
    :cond_21
    new-array v0, v1, [B

    .line 859
    .local v0, "copy":[B
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    return-object v0
.end method

.method private static createDateInfo(I)Ljava/lang/String;
    .registers 5
    .param p0, "second"    # I

    .prologue
    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "currentTime":Ljava/lang/String;
    :goto_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-lt v1, v2, :cond_37

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 868
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 899
    if-nez p0, :cond_5

    .line 900
    const/4 v0, 0x0

    .line 914
    :goto_4
    return-object v0

    .line 903
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 904
    .local v4, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 906
    .local v3, "h":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_26

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 908
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_16
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 910
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 911
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 913
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 906
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_26
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_16
.end method

.method private static getDateInfoFromDate([B)[Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 837
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->hasDateInfo([B)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 838
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xd

    invoke-static {p0, v4, v2}, Lcom/idelan/app/Util/ACache$Utils;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 839
    .local v1, "saveDate":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0xe

    const/16 v3, 0x20

    invoke-static {p0, v3}, Lcom/idelan/app/Util/ACache$Utils;->indexOf([BC)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/idelan/app/Util/ACache$Utils;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 840
    .local v0, "deleteAfter":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 842
    .end local v0    # "deleteAfter":Ljava/lang/String;
    .end local v1    # "saveDate":Ljava/lang/String;
    :goto_2b
    return-object v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method private static hasDateInfo([B)Z
    .registers 3
    .param p0, "data"    # [B

    .prologue
    .line 833
    if-eqz p0, :cond_1b

    array-length v0, p0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1b

    const/16 v0, 0xd

    aget-byte v0, p0, v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1b

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/idelan/app/Util/ACache$Utils;->indexOf([BC)I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static indexOf([BC)I
    .registers 4
    .param p0, "data"    # [B
    .param p1, "c"    # C

    .prologue
    .line 846
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_6

    .line 851
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_5
    return v0

    .line 847
    .restart local v0    # "i":I
    :cond_6
    aget-byte v1, p0, v0

    if-eq v1, p1, :cond_5

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isDue(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/idelan/app/Util/ACache$Utils;->isDue([B)Z

    move-result v0

    return v0
.end method

.method private static isDue([B)Z
    .registers 13
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 791
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->getDateInfoFromDate([B)[Ljava/lang/String;

    move-result-object v5

    .line 792
    .local v5, "strs":[Ljava/lang/String;
    if-eqz v5, :cond_3e

    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3e

    .line 793
    aget-object v4, v5, v7

    .line 794
    .local v4, "saveTimeStr":Ljava/lang/String;
    :goto_e
    const-string v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 797
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 798
    .local v2, "saveTime":J
    aget-object v8, v5, v6

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 799
    .local v0, "deleteAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    add-long/2addr v10, v2

    cmp-long v8, v8, v10

    if-lez v8, :cond_3e

    .line 803
    .end local v0    # "deleteAfter":J
    .end local v2    # "saveTime":J
    .end local v4    # "saveTimeStr":Ljava/lang/String;
    :goto_34
    return v6

    .line 795
    .restart local v4    # "saveTimeStr":Ljava/lang/String;
    :cond_35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .end local v4    # "saveTimeStr":Ljava/lang/String;
    :cond_3e
    move v6, v7

    .line 803
    goto :goto_34
.end method

.method private static newByteArrayWithDateInfo(I[B)[B
    .registers 7
    .param p0, "second"    # I
    .param p1, "data2"    # [B

    .prologue
    const/4 v4, 0x0

    .line 811
    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->createDateInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 812
    .local v0, "data1":[B
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 813
    .local v1, "retdata":[B
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    array-length v2, v0

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    return-object v1
.end method

.method private static newStringWithDateInfo(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "second"    # I
    .param p1, "strInfo"    # Ljava/lang/String;

    .prologue
    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/idelan/app/Util/ACache$Utils;->createDateInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

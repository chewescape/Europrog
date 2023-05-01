.class public Lcom/idelan/Encrypt/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static base64DecodeChars:[B

.field private static final base64EncodeChars:[C


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 6
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_278

    sput-object v0, Lcom/idelan/Encrypt/Base64;->base64EncodeChars:[C

    .line 7
    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v4

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v4, v0, v1

    const/16 v1, 0x43

    aput-byte v5, v0, v1

    const/16 v1, 0x44

    aput-byte v6, v0, v1

    const/16 v1, 0x45

    aput-byte v7, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    sput-object v0, Lcom/idelan/Encrypt/Base64;->base64DecodeChars:[B

    return-void

    .line 6
    :array_278
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 14
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x3d

    const/4 v11, -0x1

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 44
    .local v5, "data":[B
    array-length v8, v5

    .line 45
    .local v8, "len":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 46
    .local v4, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 47
    .local v6, "i":I
    :goto_e
    if-lt v6, v8, :cond_16

    .line 84
    :goto_10
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    :goto_14
    return-object v9

    .end local v6    # "i":I
    .local v0, "b1":I
    .local v7, "i":I
    :cond_15
    move v6, v7

    .line 49
    .end local v0    # "b1":I
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_16
    sget-object v9, Lcom/idelan/Encrypt/Base64;->base64DecodeChars:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-byte v10, v5, v6

    aget-byte v0, v9, v10

    .line 50
    .restart local v0    # "b1":I
    if-ge v7, v8, :cond_22

    if-eq v0, v11, :cond_15

    .line 51
    :cond_22
    if-ne v0, v11, :cond_26

    move v6, v7

    .line 52
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_10

    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_26
    move v6, v7

    .line 55
    .end local v7    # "i":I
    .restart local v6    # "i":I
    sget-object v9, Lcom/idelan/Encrypt/Base64;->base64DecodeChars:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-byte v10, v5, v6

    aget-byte v1, v9, v10

    .line 56
    .local v1, "b2":I
    if-ge v7, v8, :cond_33

    if-eq v1, v11, :cond_26

    .line 57
    :cond_33
    if-ne v1, v11, :cond_37

    move v6, v7

    .line 58
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_10

    .line 60
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_37
    shl-int/lit8 v9, v0, 0x2

    and-int/lit8 v10, v1, 0x30

    ushr-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_41
    move v6, v7

    .line 62
    .end local v7    # "i":I
    .restart local v6    # "i":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-byte v2, v5, v6

    .line 63
    .local v2, "b3":I
    if-ne v2, v12, :cond_4e

    .line 64
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_14

    .line 66
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_4e
    sget-object v9, Lcom/idelan/Encrypt/Base64;->base64DecodeChars:[B

    aget-byte v2, v9, v2

    .line 67
    if-ge v7, v8, :cond_56

    if-eq v2, v11, :cond_41

    .line 68
    :cond_56
    if-ne v2, v11, :cond_5a

    move v6, v7

    .line 69
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_10

    .line 71
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_5a
    and-int/lit8 v9, v1, 0xf

    shl-int/lit8 v9, v9, 0x4

    and-int/lit8 v10, v2, 0x3c

    ushr-int/lit8 v10, v10, 0x2

    or-int/2addr v9, v10

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_66
    move v6, v7

    .line 73
    .end local v7    # "i":I
    .restart local v6    # "i":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-byte v3, v5, v6

    .line 74
    .local v3, "b4":I
    if-ne v3, v12, :cond_73

    .line 75
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_14

    .line 77
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_73
    sget-object v9, Lcom/idelan/Encrypt/Base64;->base64DecodeChars:[B

    aget-byte v3, v9, v3

    .line 78
    if-ge v7, v8, :cond_7b

    if-eq v3, v11, :cond_66

    .line 79
    :cond_7b
    if-ne v3, v11, :cond_7f

    move v6, v7

    .line 80
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_10

    .line 82
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_7f
    and-int/lit8 v9, v2, 0x3

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v3

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_e
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 11
    .param p0, "data"    # [B

    .prologue
    .line 13
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    .local v6, "sb":Ljava/lang/StringBuffer;
    array-length v5, p0

    .line 15
    .local v5, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, v3

    .line 17
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_8
    if-lt v4, v5, :cond_10

    move v3, v4

    .line 39
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_b
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 18
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_10
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v7, p0, v4

    and-int/lit16 v0, v7, 0xff

    .line 19
    .local v0, "b1":I
    if-ne v3, v5, :cond_32

    .line 20
    sget-object v7, Lcom/idelan/Encrypt/Base64;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 21
    sget-object v7, Lcom/idelan/Encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 22
    const-string v7, "=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 25
    :cond_32
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v7, p0, v3

    and-int/lit16 v1, v7, 0xff

    .line 26
    .local v1, "b2":I
    if-ne v4, v5, :cond_65

    .line 27
    sget-object v7, Lcom/idelan/Encrypt/Base64;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    sget-object v7, Lcom/idelan/Encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    and-int/lit16 v9, v1, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    sget-object v7, Lcom/idelan/Encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v4

    .line 31
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_b

    .line 33
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_65
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v7, p0, v4

    and-int/lit16 v2, v7, 0xff

    .line 34
    .local v2, "b3":I
    sget-object v7, Lcom/idelan/Encrypt/Base64;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 35
    sget-object v7, Lcom/idelan/Encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    and-int/lit16 v9, v1, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    sget-object v7, Lcom/idelan/Encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x2

    and-int/lit16 v9, v2, 0xc0

    ushr-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    sget-object v7, Lcom/idelan/Encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v8, v2, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_8
.end method

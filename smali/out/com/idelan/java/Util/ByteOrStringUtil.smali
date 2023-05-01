.class public Lcom/idelan/java/Util/ByteOrStringUtil;
.super Ljava/lang/Object;
.source "ByteOrStringUtil.java"


# static fields
.field private static CHAR_ENCODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string v0, "UTF-8"

    sput-object v0, Lcom/idelan/java/Util/ByteOrStringUtil;->CHAR_ENCODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ByteToString([B)Ljava/lang/String;
    .registers 2
    .param p0, "srcObj"    # [B

    .prologue
    .line 41
    sget-object v0, Lcom/idelan/java/Util/ByteOrStringUtil;->CHAR_ENCODE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/idelan/java/Util/ByteOrStringUtil;->ByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ByteToString([BLjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "srcObj"    # [B
    .param p1, "charEncode"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "destObj":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_10

    .end local v0    # "destObj":Ljava/lang/String;
    .local v1, "destObj":Ljava/lang/String;
    move-object v0, v1

    .line 78
    .end local v1    # "destObj":Ljava/lang/String;
    .restart local v0    # "destObj":Ljava/lang/String;
    :goto_7
    const-string v3, "\u0000"

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 75
    :catch_10
    move-exception v2

    .line 76
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_7
.end method

.method public static StringToByte(Ljava/lang/String;)[B
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/idelan/java/Util/ByteOrStringUtil;->CHAR_ENCODE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/idelan/java/Util/ByteOrStringUtil;->StringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static StringToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charEncode"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "destObj":[B
    if-eqz p0, :cond_f

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 55
    :cond_f
    const/4 v3, 0x0

    new-array v0, v3, [B

    move-object v1, v0

    .line 63
    .end local v0    # "destObj":[B
    .local v1, "destObj":[B
    :goto_13
    return-object v1

    .line 58
    .end local v1    # "destObj":[B
    .restart local v0    # "destObj":[B
    :cond_14
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_17} :catch_1a

    move-result-object v0

    :goto_18
    move-object v1, v0

    .line 63
    .end local v0    # "destObj":[B
    .restart local v1    # "destObj":[B
    goto :goto_13

    .line 60
    .end local v1    # "destObj":[B
    .restart local v0    # "destObj":[B
    :catch_1a
    move-exception v2

    .line 61
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_18
.end method

.method public static configCharEncode(Ljava/lang/String;)V
    .registers 1
    .param p0, "charEncode"    # Ljava/lang/String;

    .prologue
    .line 22
    sput-object p0, Lcom/idelan/java/Util/ByteOrStringUtil;->CHAR_ENCODE:Ljava/lang/String;

    .line 23
    return-void
.end method

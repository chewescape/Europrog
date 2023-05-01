.class public Lcom/idelan/Charset/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 426
    .end local p0    # "str":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p0

    .line 425
    .restart local p0    # "str":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 426
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_6

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 428
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 429
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static fullWidthToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 570
    .end local p0    # "s":Ljava/lang/String;
    :goto_6
    return-object p0

    .line 558
    .restart local p0    # "s":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 559
    .local v1, "source":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v2, v1

    if-lt v0, v2, :cond_15

    .line 570
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_6

    .line 560
    .restart local p0    # "s":Ljava/lang/String;
    :cond_15
    aget-char v2, v1, v0

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_22

    .line 561
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 559
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 564
    :cond_22
    aget-char v2, v1, v0

    const v3, 0xff01

    if-lt v2, v3, :cond_3a

    aget-char v2, v1, v0

    const v3, 0xff5e

    if-gt v2, v3, :cond_3a

    .line 565
    aget-char v2, v1, v0

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_1f

    .line 567
    :cond_3a
    aget-char v2, v1, v0

    aput-char v2, v1, v0

    goto :goto_1f
.end method

.method public static getBytesIso8859_1(Ljava/lang/String;)[B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 186
    if-nez p0, :cond_4

    .line 187
    const/4 v1, 0x0

    .line 190
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 191
    :catch_9
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {p1, v0}, Lcom/idelan/Charset/StringUtils;->newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method public static getBytesUsAscii(Ljava/lang/String;)[B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf16(Ljava/lang/String;)[B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "UTF-16"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf16Be(Ljava/lang/String;)[B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v0, "UTF-16BE"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf16Le(Ljava/lang/String;)[B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "UTF-16LE"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesUtf8(Ljava/lang/String;)[B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getHrefInnerHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "href"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 504
    const-string p0, ""

    .line 514
    .end local p0    # "href":Ljava/lang/String;
    .local v0, "hrefMatcher":Ljava/util/regex/Matcher;
    .local v1, "hrefPattern":Ljava/util/regex/Pattern;
    .local v2, "hrefReg":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p0

    .line 507
    .end local v0    # "hrefMatcher":Ljava/util/regex/Matcher;
    .end local v1    # "hrefPattern":Ljava/util/regex/Pattern;
    .end local v2    # "hrefReg":Ljava/lang/String;
    .restart local p0    # "href":Ljava/lang/String;
    :cond_9
    const-string v2, ".*<[\\s]*a[\\s]*.*>(.+?)<[\\s]*/a[\\s]*>.*"

    .line 509
    .restart local v2    # "hrefReg":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 510
    .restart local v1    # "hrefPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 511
    .restart local v0    # "hrefMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 512
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static halfWidthToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 603
    .end local p0    # "s":Ljava/lang/String;
    :goto_6
    return-object p0

    .line 591
    .restart local p0    # "s":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 592
    .local v1, "source":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v2, v1

    if-lt v0, v2, :cond_15

    .line 603
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_6

    .line 593
    .restart local p0    # "s":Ljava/lang/String;
    :cond_15
    aget-char v2, v1, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_22

    .line 594
    const/16 v2, 0x3000

    aput-char v2, v1, v0

    .line 592
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 597
    :cond_22
    aget-char v2, v1, v0

    const/16 v3, 0x21

    if-lt v2, v3, :cond_38

    aget-char v2, v1, v0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_38

    .line 598
    aget-char v2, v1, v0

    const v3, 0xfee0

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_1f

    .line 600
    :cond_38
    aget-char v2, v1, v0

    aput-char v2, v1, v0

    goto :goto_1f
.end method

.method public static htmlEscapeCharsToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .end local p0    # "source":Ljava/lang/String;
    :goto_6
    return-object p0

    .line 536
    .restart local p0    # "source":Ljava/lang/String;
    :cond_7
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 357
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 374
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "actual"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {p0, p1}, Lcom/idelan/java/Util/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
    .registers 5
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/io/UnsupportedEncodingException;

    .prologue
    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newString([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 226
    if-nez p0, :cond_4

    .line 227
    const/4 v1, 0x0

    .line 230
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_3

    .line 231
    :catch_a
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {p1, v0}, Lcom/idelan/Charset/StringUtils;->newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method public static newStringIso8859_1([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 251
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUsAscii([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 268
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf16([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 285
    const-string v0, "UTF-16"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf16Be([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 302
    const-string v0, "UTF-16BE"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf16Le([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 319
    const-string v0, "UTF-16LE"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringUtf8([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 336
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/idelan/Charset/StringUtils;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nullStrToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 402
    if-nez p0, :cond_4

    const-string p0, ""

    .end local p0    # "str":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method public static replaceBlank(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 608
    const-string v0, ""

    .line 610
    .local v0, "dest":Ljava/lang/String;
    if-eqz p0, :cond_14

    .line 612
    const-string v3, "\\s*|\t|\r|\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 614
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 616
    .local v1, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_14
    return-object v0
.end method

.method public static replaceLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 627
    const-string v0, ""

    .line 629
    .local v0, "dest":Ljava/lang/String;
    if-eqz p0, :cond_14

    .line 631
    const-string v3, "\r|\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 633
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 635
    .local v1, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_14
    return-object v0
.end method

.method public static utf8Encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_17

    .line 450
    :try_start_11
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_16} :catch_18

    move-result-object p0

    .line 456
    .end local p0    # "str":Ljava/lang/String;
    :cond_17
    return-object p0

    .line 451
    .restart local p0    # "str":Ljava/lang/String;
    :catch_18
    move-exception v0

    .line 452
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 453
    const-string v2, "UnsupportedEncodingException occurred. "

    .line 452
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static utf8Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defultReturn"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1a

    .line 469
    :try_start_11
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_16} :catch_18

    move-result-object p1

    .line 474
    .end local p1    # "defultReturn":Ljava/lang/String;
    :goto_17
    return-object p1

    .line 470
    .restart local p1    # "defultReturn":Ljava/lang/String;
    :catch_18
    move-exception v0

    .line 471
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_17

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1a
    move-object p1, p0

    .line 474
    goto :goto_17
.end method

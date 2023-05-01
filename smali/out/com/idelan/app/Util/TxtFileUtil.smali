.class public Lcom/idelan/app/Util/TxtFileUtil;
.super Ljava/lang/Object;
.source "TxtFileUtil.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/idelan/app/Util/TxtFileUtil;->context:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public readFileData(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v4, ""

    .line 49
    .local v4, "res":Ljava/lang/String;
    :try_start_2
    iget-object v5, p0, Lcom/idelan/app/Util/TxtFileUtil;->context:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 50
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 51
    .local v3, "length":I
    new-array v0, v3, [B

    .line 52
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 53
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 58
    .end local v0    # "buffer":[B
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "length":I
    :goto_1a
    return-object v4

    .line 55
    :catch_1b
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public readFileSdcard(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v4, ""

    .line 101
    .local v4, "res":Ljava/lang/String;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 105
    .local v3, "length":I
    new-array v0, v3, [B

    .line 107
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 109
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    .line 121
    .end local v0    # "buffer":[B
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "length":I
    :goto_19
    return-object v4

    .line 115
    :catch_1a
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public readFromAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 166
    .local v7, "sb":Ljava/lang/StringBuffer;
    :try_start_7
    iget-object v8, p0, Lcom/idelan/app/Util/TxtFileUtil;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_31

    move-result-object v2

    .line 167
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 169
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_16
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_1b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_31

    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v4, "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 173
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_1c
    :try_start_1c
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_31

    .line 176
    .local v6, "reader":Ljava/io/BufferedReader;
    :goto_21
    :try_start_21
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_31

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_36

    .line 186
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_27
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 170
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_2c
    move-exception v1

    .line 171
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_1c

    .line 183
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_31
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_36
    :try_start_36
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3e} :catch_31

    goto :goto_21

    .line 180
    .end local v5    # "line":Ljava/lang/String;
    :catch_3f
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    :try_start_40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_31

    goto :goto_27
.end method

.method public readFromRaw(I)Ljava/lang/String;
    .registers 11
    .param p1, "fileInRaw"    # I

    .prologue
    .line 132
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 134
    .local v7, "sb":Ljava/lang/StringBuffer;
    :try_start_7
    iget-object v8, p0, Lcom/idelan/app/Util/TxtFileUtil;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_2f

    move-result-object v2

    .line 135
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 137
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_12
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v8, "gbk"

    invoke-direct {v4, v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_19} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_2f

    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v4, "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 141
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_1a
    :try_start_1a
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_2f

    .line 144
    .local v6, "reader":Ljava/io/BufferedReader;
    :goto_1f
    :try_start_1f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_2f

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_34

    .line 154
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_25
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 138
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_2a
    move-exception v1

    .line 139
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_1a

    .line 151
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_2f
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_34
    :try_start_34
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_2f

    goto :goto_1f

    .line 148
    .end local v5    # "line":Ljava/lang/String;
    :catch_3d
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_2f

    goto :goto_25
.end method

.method public writeFileData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/idelan/app/Util/TxtFileUtil;->context:Landroid/content/Context;

    .line 31
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 32
    .local v2, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 33
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 34
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 38
    .end local v0    # "bytes":[B
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :goto_11
    return-void

    .line 35
    :catch_12
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public writeFileSdcard(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 75
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 79
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 81
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 91
    .end local v0    # "bytes":[B
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :goto_f
    return-void

    .line 85
    :catch_10
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

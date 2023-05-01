.class public Lcom/idelan/java/Util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final FILE_EXTENSION_SEPARATOR:Ljava/lang/String; = "."


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "sourceFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_b

    .line 210
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    invoke-static {p1, v1}, Lcom/idelan/java/Util/FileUtils;->writeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v2

    return v2

    .line 207
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_b
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "FileNotFoundException occurred. "

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 466
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 487
    :cond_8
    :goto_8
    return v2

    .line 470
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 474
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 475
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_8

    .line 477
    :cond_1f
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_27

    move v2, v3

    .line 478
    goto :goto_8

    .line 480
    :cond_27
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    :goto_2c
    if-lt v3, v4, :cond_33

    .line 487
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_8

    .line 480
    :cond_33
    aget-object v0, v2, v3

    .line 481
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 480
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 483
    :cond_41
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 484
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/idelan/java/Util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_3e
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 383
    .end local p0    # "filePath":Ljava/lang/String;
    .local v0, "extenPosi":I
    .local v1, "filePosi":I
    :goto_6
    return-object p0

    .line 378
    .end local v0    # "extenPosi":I
    .end local v1    # "filePosi":I
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_7
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 379
    .restart local v0    # "extenPosi":I
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 380
    .restart local v1    # "filePosi":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_19

    .line 381
    const-string p0, ""

    goto :goto_6

    .line 383
    :cond_19
    if-lt v1, v0, :cond_1f

    const-string v2, ""

    :goto_1d
    move-object p0, v2

    goto :goto_6

    :cond_1f
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 316
    .end local p0    # "filePath":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p0

    .line 315
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_7
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "filePosi":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 274
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 286
    .end local p0    # "filePath":Ljava/lang/String;
    .local v0, "extenPosi":I
    .local v1, "filePosi":I
    :cond_7
    :goto_7
    return-object p0

    .line 278
    .end local v0    # "extenPosi":I
    .end local v1    # "filePosi":I
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_8
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 279
    .restart local v0    # "extenPosi":I
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 280
    .restart local v1    # "filePosi":I
    if-ne v1, v3, :cond_1e

    .line 281
    if-eq v0, v3, :cond_7

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 283
    :cond_1e
    if-ne v0, v3, :cond_27

    .line 284
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 286
    :cond_27
    if-ge v1, v0, :cond_31

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_2f
    move-object p0, v2

    goto :goto_7

    :cond_31
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 501
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 506
    :cond_8
    :goto_8
    return-wide v2

    .line 505
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_8
.end method

.method public static getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 348
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_6
    return-object p0

    .line 347
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_7
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, "filePosi":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const-string v1, ""

    :goto_12
    move-object p0, v1

    goto :goto_6

    :cond_14
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 431
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 436
    :cond_7
    :goto_7
    return v1

    .line 435
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static isFolderExist(Ljava/lang/String;)Z
    .registers 4
    .param p0, "directoryPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 451
    :cond_7
    :goto_7
    return v1

    .line 450
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "dire":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static makeDirs(Ljava/lang/String;)Z
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-static {p0}, Lcom/idelan/java/Util/FileUtils;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "folderName":Ljava/lang/String;
    invoke-static {v1}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 408
    const/4 v2, 0x0

    .line 412
    :goto_b
    return v2

    .line 411
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_b

    :cond_1f
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    goto :goto_b
.end method

.method public static makeFolders(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-static {p0}, Lcom/idelan/java/Util/FileUtils;->makeDirs(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "fileContent":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_16

    .line 62
    :cond_14
    const/4 v2, 0x0

    .line 77
    .end local v2    # "fileContent":Ljava/lang/StringBuilder;
    :cond_15
    :goto_15
    return-object v2

    .line 65
    .restart local v2    # "fileContent":Ljava/lang/StringBuilder;
    :cond_16
    const/4 v5, 0x0

    .line 67
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_17
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    .local v3, "is":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_26} :catch_71
    .catchall {:try_start_17 .. :try_end_26} :catchall_5e

    .line 69
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 70
    .local v4, "line":Ljava/lang/String;
    :goto_27
    :try_start_27
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3f

    .line 76
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_30} :catch_54
    .catchall {:try_start_27 .. :try_end_30} :catchall_6e

    .line 81
    if-eqz v6, :cond_15

    .line 83
    :try_start_32
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_15

    .line 84
    :catch_36
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3f
    :try_start_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 72
    const-string v7, "\r\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_53} :catch_54
    .catchall {:try_start_3f .. :try_end_53} :catchall_6e

    goto :goto_27

    .line 78
    :catch_54
    move-exception v0

    move-object v5, v6

    .line 79
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_56
    :try_start_56
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_5e

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5e
    move-exception v7

    .line 81
    :goto_5f
    if-eqz v5, :cond_64

    .line 83
    :try_start_61
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 88
    :cond_64
    throw v7

    .line 84
    :catch_65
    move-exception v0

    .line 85
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_6e
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_5f

    .line 78
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_71
    move-exception v0

    goto :goto_56
.end method

.method public static readFileToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "fileContent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_14

    .line 225
    :cond_12
    const/4 v2, 0x0

    .line 237
    .end local v2    # "fileContent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    :goto_13
    return-object v2

    .line 228
    .restart local v2    # "fileContent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    const/4 v5, 0x0

    .line 230
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_15
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 231
    .local v3, "is":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_24} :catch_5e
    .catchall {:try_start_15 .. :try_end_24} :catchall_4b

    .line 232
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 233
    .local v4, "line":Ljava/lang/String;
    :goto_25
    :try_start_25
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3d

    .line 236
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_41
    .catchall {:try_start_25 .. :try_end_2e} :catchall_5b

    .line 241
    if-eqz v6, :cond_13

    .line 243
    :try_start_30
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_13

    .line 244
    :catch_34
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3d
    :try_start_3d
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41
    .catchall {:try_start_3d .. :try_end_40} :catchall_5b

    goto :goto_25

    .line 238
    :catch_41
    move-exception v0

    move-object v5, v6

    .line 239
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_43
    :try_start_43
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4b

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4b
    move-exception v7

    .line 241
    :goto_4c
    if-eqz v5, :cond_51

    .line 243
    :try_start_4e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 248
    :cond_51
    throw v7

    .line 244
    :catch_52
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_5b
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_4c

    .line 238
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_5e
    move-exception v0

    goto :goto_43
.end method

.method public static writeFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/FileUtils;->writeFile(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFile(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .prologue
    .line 168
    const/4 v3, 0x0

    .line 170
    .local v3, "o":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/idelan/java/Util/FileUtils;->makeDirs(Ljava/lang/String;)Z

    .line 171
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_60
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_48
    .catchall {:try_start_1 .. :try_end_d} :catchall_35

    .line 172
    .end local v3    # "o":Ljava/io/OutputStream;
    .local v4, "o":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_f
    new-array v0, v5, [B

    .line 173
    .local v0, "data":[B
    const/4 v2, -0x1

    .line 174
    .local v2, "length":I
    :goto_12
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_26

    .line 177
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1c} :catch_2b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_5d
    .catchall {:try_start_f .. :try_end_1c} :catchall_5a

    .line 184
    if-eqz v4, :cond_24

    .line 186
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 187
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_3f

    .line 178
    :cond_24
    const/4 v5, 0x1

    return v5

    .line 175
    :cond_26
    const/4 v5, 0x0

    :try_start_27
    invoke-virtual {v4, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_5d
    .catchall {:try_start_27 .. :try_end_2a} :catchall_5a

    goto :goto_12

    .line 179
    .end local v0    # "data":[B
    .end local v2    # "length":I
    :catch_2b
    move-exception v1

    move-object v3, v4

    .line 180
    .end local v4    # "o":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "o":Ljava/io/OutputStream;
    :goto_2d
    :try_start_2d
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "FileNotFoundException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    .line 183
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_35
    move-exception v5

    .line 184
    :goto_36
    if-eqz v3, :cond_3e

    .line 186
    :try_start_38
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 187
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_51

    .line 192
    :cond_3e
    throw v5

    .line 188
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "length":I
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catch_3f
    move-exception v1

    .line 189
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 181
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "length":I
    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    :catch_48
    move-exception v1

    .line 182
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_49
    :try_start_49
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_35

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    :catch_51
    move-exception v1

    .line 189
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 183
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catchall_5a
    move-exception v5

    move-object v3, v4

    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    goto :goto_36

    .line 181
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catch_5d
    move-exception v1

    move-object v3, v4

    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    goto :goto_49

    .line 179
    :catch_60
    move-exception v1

    goto :goto_2d
.end method

.method public static writeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/FileUtils;->writeFile(Ljava/lang/String;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .prologue
    .line 143
    if-eqz p0, :cond_c

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-static {v0, p1, p2}, Lcom/idelan/java/Util/FileUtils;->writeFile(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "fileWriter":Ljava/io/FileWriter;
    :try_start_1
    invoke-static {p0}, Lcom/idelan/java/Util/FileUtils;->makeDirs(Ljava/lang/String;)Z

    .line 104
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_1f
    .catchall {:try_start_1 .. :try_end_9} :catchall_28

    .line 105
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .local v2, "fileWriter":Ljava/io/FileWriter;
    :try_start_9
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_3b
    .catchall {:try_start_9 .. :try_end_f} :catchall_38

    .line 111
    if-eqz v2, :cond_14

    .line 113
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_16

    .line 107
    :cond_14
    const/4 v3, 0x1

    return v3

    .line 114
    :catch_16
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    :catch_1f
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_20
    :try_start_20
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_28
    move-exception v3

    .line 111
    :goto_29
    if-eqz v1, :cond_2e

    .line 113
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 118
    :cond_2e
    throw v3

    .line 114
    :catch_2f
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catchall_38
    move-exception v3

    move-object v1, v2

    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_29

    .line 108
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catch_3b
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_20
.end method

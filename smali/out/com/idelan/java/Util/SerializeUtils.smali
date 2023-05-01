.class public Lcom/idelan/java/Util/SerializeUtils;
.super Ljava/lang/Object;
.source "SerializeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialization(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_b} :catch_31
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_3a
    .catchall {:try_start_1 .. :try_end_b} :catchall_2a

    .line 28
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 29
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_12} :catch_52
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_4f
    .catchall {:try_start_b .. :try_end_12} :catchall_4c

    .line 38
    if-eqz v2, :cond_17

    .line 40
    :try_start_14
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    .line 30
    :cond_17
    return-object v3

    .line 41
    :catch_18
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IOException occurred. "

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 31
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "o":Ljava/lang/Object;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_21
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_22
    :try_start_22
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "FileNotFoundException occurred. "

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 37
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_2a
    move-exception v4

    .line 38
    :goto_2b
    if-eqz v1, :cond_30

    .line 40
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_43

    .line 45
    :cond_30
    throw v4

    .line 33
    :catch_31
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_32
    :try_start_32
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ClassNotFoundException occurred. "

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 35
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3a
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    :goto_3b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IOException occurred. "

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_2a

    .line 41
    .end local v0    # "e":Ljava/io/IOException;
    :catch_43
    move-exception v0

    .line 42
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IOException occurred. "

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 37
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_4c
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2b

    .line 35
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_4f
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_3b

    .line 33
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_52
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_32

    .line 31
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_55
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_22
.end method

.method public static serialization(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_27
    .catchall {:try_start_1 .. :try_end_b} :catchall_20

    .line 61
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .local v2, "out":Ljava/io/ObjectOutputStream;
    :try_start_b
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_11} :catch_48
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_45
    .catchall {:try_start_b .. :try_end_11} :catchall_42

    .line 68
    if-eqz v2, :cond_16

    .line 70
    :try_start_13
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_39

    .line 76
    :cond_16
    return-void

    .line 63
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_17
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_18
    :try_start_18
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "FileNotFoundException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    .line 67
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_20
    move-exception v3

    .line 68
    :goto_21
    if-eqz v1, :cond_26

    .line 70
    :try_start_23
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_30

    .line 75
    :cond_26
    throw v3

    .line 65
    :catch_27
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    :goto_28
    :try_start_28
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_20

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :catch_39
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_42
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_21

    .line 65
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :catch_45
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_28

    .line 63
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :catch_48
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_18
.end method

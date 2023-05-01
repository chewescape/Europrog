.class public Lcom/idelan/java/Util/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/java/Util/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"

.field public static final COMMAND_SU:Ljava/lang/String; = "su"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRootPermission()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    const-string v2, "echo root"

    invoke-static {v2, v0, v1}, Lcom/idelan/java/Util/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;

    move-result-object v2

    iget v2, v2, Lcom/idelan/java/Util/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public static execCommand(Ljava/lang/String;Z)Lcom/idelan/java/Util/ShellUtils$CommandResult;
    .registers 5
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .prologue
    const/4 v2, 0x1

    .line 53
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, v2}, Lcom/idelan/java/Util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand(Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;
    .registers 5
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .prologue
    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/idelan/java/Util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand(Ljava/util/List;Z)Lcom/idelan/java/Util/ShellUtils$CommandResult;
    .registers 4
    .param p1, "isRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/idelan/java/Util/ShellUtils$CommandResult;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_9

    const/4 v0, 0x0

    .line 70
    :goto_3
    const/4 v1, 0x1

    .line 68
    invoke-static {v0, p1, v1}, Lcom/idelan/java/Util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    .line 69
    :cond_9
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static execCommand(Ljava/util/List;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;
    .registers 4
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/idelan/java/Util/ShellUtils$CommandResult;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_8

    const/4 v0, 0x0

    .line 118
    :goto_3
    invoke-static {v0, p1, p2}, Lcom/idelan/java/Util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    .line 119
    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static execCommand([Ljava/lang/String;Z)Lcom/idelan/java/Util/ShellUtils$CommandResult;
    .registers 3
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand([Ljava/lang/String;ZZ)Lcom/idelan/java/Util/ShellUtils$CommandResult;
    .registers 24
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .prologue
    .line 141
    const/4 v12, -0x1

    .line 142
    .local v12, "result":I
    if-eqz p0, :cond_a

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_1a

    .line 143
    :cond_a
    new-instance v18, Lcom/idelan/java/Util/ShellUtils$CommandResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v12, v1, v2}, Lcom/idelan/java/Util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_19
    return-object v18

    .line 146
    :cond_1a
    const/4 v11, 0x0

    .line 147
    .local v11, "process":Ljava/lang/Process;
    const/16 v16, 0x0

    .line 148
    .local v16, "successResult":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 149
    .local v7, "errorResult":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 150
    .local v14, "successMsg":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 152
    .local v5, "errorMsg":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 154
    .local v9, "os":Ljava/io/DataOutputStream;
    :try_start_21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    .line 155
    if-eqz p1, :cond_c0

    const-string v18, "su"

    .line 154
    :goto_29
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v11

    .line 156
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3c} :catch_195
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3c} :catch_17f
    .catchall {:try_start_21 .. :try_end_3c} :catchall_135

    .line 157
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .local v10, "os":Ljava/io/DataOutputStream;
    :try_start_3c
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_43
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_c4

    .line 168
    const-string v18, "exit\n"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 171
    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I

    move-result v12

    .line 173
    if-eqz p2, :cond_92

    .line 174
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_5e} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5e} :catch_181
    .catchall {:try_start_3c .. :try_end_5e} :catchall_164

    .line 175
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .local v15, "successMsg":Ljava/lang/StringBuilder;
    :try_start_5e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_63} :catch_198
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_184
    .catchall {:try_start_5e .. :try_end_63} :catchall_167

    .line 176
    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .local v6, "errorMsg":Ljava/lang/StringBuilder;
    :try_start_63
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    .line 177
    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 176
    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_71} :catch_19d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_71} :catch_188
    .catchall {:try_start_63 .. :try_end_71} :catchall_16b

    .line 178
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .local v17, "successResult":Ljava/io/BufferedReader;
    :try_start_71
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    .line 179
    invoke-virtual {v11}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 178
    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_81} :catch_1a3
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_81} :catch_18d
    .catchall {:try_start_71 .. :try_end_81} :catchall_170

    .line 181
    .end local v7    # "errorResult":Ljava/io/BufferedReader;
    .local v8, "errorResult":Ljava/io/BufferedReader;
    :goto_81
    :try_start_81
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "s":Ljava/lang/String;
    if-nez v13, :cond_fa

    .line 184
    :goto_87
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8a} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8a} :catch_10b
    .catchall {:try_start_81 .. :try_end_8a} :catchall_177

    move-result-object v13

    if-nez v13, :cond_106

    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object v7, v8

    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .line 194
    .end local v13    # "s":Ljava/lang/String;
    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    :cond_92
    if-eqz v10, :cond_97

    .line 195
    :try_start_94
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 197
    :cond_97
    if-eqz v16, :cond_9c

    .line 198
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 200
    :cond_9c
    if-eqz v7, :cond_a1

    .line 201
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a1} :catch_150

    .line 207
    :cond_a1
    :goto_a1
    if-eqz v11, :cond_a6

    .line 208
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    :cond_a6
    move-object v9, v10

    .line 211
    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :cond_a7
    :goto_a7
    new-instance v19, Lcom/idelan/java/Util/ShellUtils$CommandResult;

    if-nez v14, :cond_156

    const/16 v18, 0x0

    move-object/from16 v20, v18

    .line 212
    :goto_af
    if-nez v5, :cond_15e

    const/16 v18, 0x0

    .line 211
    :goto_b3
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v12, v1, v2}, Lcom/idelan/java/Util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v19

    goto/16 :goto_19

    .line 155
    :cond_c0
    :try_start_c0
    const-string v18, "sh"
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c2} :catch_195
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c2} :catch_17f
    .catchall {:try_start_c0 .. :try_end_c2} :catchall_135

    goto/16 :goto_29

    .line 157
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    :cond_c4
    :try_start_c4
    aget-object v3, p0, v18

    .line 158
    .local v3, "command":Ljava/lang/String;
    if-nez v3, :cond_cc

    .line 157
    :goto_c8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_43

    .line 164
    :cond_cc
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 165
    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_df} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_df} :catch_181
    .catchall {:try_start_c4 .. :try_end_df} :catchall_164

    goto :goto_c8

    .line 188
    .end local v3    # "command":Ljava/lang/String;
    :catch_e0
    move-exception v4

    move-object v9, v10

    .line 189
    .end local v10    # "os":Ljava/io/DataOutputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :goto_e2
    :try_start_e2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_135

    .line 194
    if-eqz v9, :cond_ea

    .line 195
    :try_start_e7
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 197
    :cond_ea
    if-eqz v16, :cond_ef

    .line 198
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 200
    :cond_ef
    if-eqz v7, :cond_f4

    .line 201
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_f4} :catch_12b

    .line 207
    :cond_f4
    :goto_f4
    if-eqz v11, :cond_a7

    .line 208
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto :goto_a7

    .line 182
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "errorResult":Ljava/io/BufferedReader;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v13    # "s":Ljava/lang/String;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :cond_fa
    :try_start_fa
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 188
    .end local v13    # "s":Ljava/lang/String;
    :catch_fe
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object v7, v8

    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    goto :goto_e2

    .line 185
    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "errorResult":Ljava/io/BufferedReader;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v13    # "s":Ljava/lang/String;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :cond_106
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_109} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_109} :catch_10b
    .catchall {:try_start_fa .. :try_end_109} :catchall_177

    goto/16 :goto_87

    .line 190
    .end local v13    # "s":Ljava/lang/String;
    :catch_10b
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object v7, v8

    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .line 191
    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    :goto_112
    :try_start_112
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_135

    .line 194
    if-eqz v9, :cond_11a

    .line 195
    :try_start_117
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 197
    :cond_11a
    if-eqz v16, :cond_11f

    .line 198
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 200
    :cond_11f
    if-eqz v7, :cond_124

    .line 201
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_124} :catch_130

    .line 207
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_124
    :goto_124
    if-eqz v11, :cond_a7

    .line 208
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_a7

    .line 203
    .local v4, "e":Ljava/io/IOException;
    :catch_12b
    move-exception v4

    .line 204
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f4

    .line 203
    .local v4, "e":Ljava/lang/Exception;
    :catch_130
    move-exception v4

    .line 204
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_124

    .line 192
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_135
    move-exception v18

    .line 194
    :goto_136
    if-eqz v9, :cond_13b

    .line 195
    :try_start_138
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 197
    :cond_13b
    if-eqz v16, :cond_140

    .line 198
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 200
    :cond_140
    if-eqz v7, :cond_145

    .line 201
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_145} :catch_14b

    .line 207
    :cond_145
    :goto_145
    if-eqz v11, :cond_14a

    .line 208
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    .line 210
    :cond_14a
    throw v18

    .line 203
    :catch_14b
    move-exception v4

    .line 204
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_145

    .line 203
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    :catch_150
    move-exception v4

    .line 204
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a1

    .line 212
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :cond_156
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v18

    goto/16 :goto_af

    .line 213
    :cond_15e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_b3

    .line 192
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    :catchall_164
    move-exception v18

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    goto :goto_136

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catchall_167
    move-exception v18

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto :goto_136

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catchall_16b
    move-exception v18

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto :goto_136

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catchall_170
    move-exception v18

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    goto :goto_136

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "errorResult":Ljava/io/BufferedReader;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catchall_177
    move-exception v18

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object v7, v8

    .end local v8    # "errorResult":Ljava/io/BufferedReader;
    .restart local v7    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    goto :goto_136

    .line 190
    :catch_17f
    move-exception v4

    goto :goto_112

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    :catch_181
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    goto :goto_112

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catch_184
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto :goto_112

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catch_188
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto :goto_112

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catch_18d
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    goto/16 :goto_112

    .line 188
    :catch_195
    move-exception v4

    goto/16 :goto_e2

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catch_198
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_e2

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catch_19d
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_e2

    .end local v5    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catch_1a3
    move-exception v4

    move-object v9, v10

    .end local v10    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    goto/16 :goto_e2
.end method

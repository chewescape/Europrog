.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->readProfiles(Ljava/util/ArrayList;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$filesName:Ljava/util/ArrayList;

.field final synthetic val$msgId:I

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/util/ArrayList;Landroid/os/Handler;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->val$filesName:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->val$uiHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 310
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-static {v9}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 339
    :goto_8
    return-void

    .line 312
    :cond_9
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    const-string v11, "/progmaticProfiles/"

    invoke-virtual {v10, v11}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->ifParentDirNotExistCreate(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, "parentPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 315
    .local v1, "chars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    const/4 v4, 0x0

    .line 316
    .local v4, "inputStream":Ljava/io/FileInputStream;
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->val$filesName:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_35
    :goto_35
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 318
    .local v3, "filename":Ljava/lang/String;
    :try_start_41
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_57} :catch_84
    .catchall {:try_start_41 .. :try_end_57} :catchall_a6

    .line 319
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .local v5, "inputStream":Ljava/io/FileInputStream;
    :try_start_57
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 320
    .local v7, "objectInputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-object v1, v0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_64} :catch_d5
    .catchall {:try_start_57 .. :try_end_64} :catchall_d2

    .line 324
    if-nez v1, :cond_7a

    .line 325
    new-instance v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .end local v1    # "chars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    invoke-direct {v1}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;-><init>()V

    .line 326
    .restart local v1    # "chars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-virtual {v9, v3}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->writeProfile(Ljava/lang/String;)V

    .line 330
    :goto_73
    if-eqz v5, :cond_d8

    .line 332
    :try_start_75
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_7e

    move-object v4, v5

    .line 335
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_35

    .line 329
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :cond_7a
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 333
    :catch_7e
    move-exception v2

    .line 334
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 335
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_35

    .line 321
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_84
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/Exception;
    :goto_85
    :try_start_85
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_a6

    .line 324
    if-nez v1, :cond_a2

    .line 325
    new-instance v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .end local v1    # "chars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    invoke-direct {v1}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;-><init>()V

    .line 326
    .restart local v1    # "chars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-virtual {v9, v3}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->writeProfile(Ljava/lang/String;)V

    .line 330
    :goto_97
    if-eqz v4, :cond_35

    .line 332
    :try_start_99
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_35

    .line 333
    :catch_9d
    move-exception v2

    .line 334
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 329
    .local v2, "e":Ljava/lang/Exception;
    :cond_a2
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    .line 324
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_a6
    move-exception v9

    :goto_a7
    if-nez v1, :cond_bc

    .line 325
    new-instance v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .end local v1    # "chars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    invoke-direct {v1}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;-><init>()V

    .line 326
    .restart local v1    # "chars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v10, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-virtual {v10, v3}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->writeProfile(Ljava/lang/String;)V

    .line 330
    :goto_b6
    if-eqz v4, :cond_bb

    .line 332
    :try_start_b8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_c0

    .line 335
    :cond_bb
    :goto_bb
    throw v9

    .line 329
    :cond_bc
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b6

    .line 333
    :catch_c0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bb

    .line 338
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_c5
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->val$uiHandler:Landroid/os/Handler;

    iget v10, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;->val$msgId:I

    invoke-virtual {v9, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    .line 324
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :catchall_d2
    move-exception v9

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_a7

    .line 321
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :catch_d5
    move-exception v2

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_85

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_d8
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_35
.end method

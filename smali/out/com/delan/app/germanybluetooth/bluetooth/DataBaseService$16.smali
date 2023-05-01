.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$16;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->writeProfiles(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$filesName:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$16;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$16;->val$filesName:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 347
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$16;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-static {v8}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 367
    :cond_8
    return-void

    .line 349
    :cond_9
    sget-object v8, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iget-object v8, v8, Lcom/delan/app/germanybluetooth/MyApplication;->mCurrentRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v3, v8, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    .line 350
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$16;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    const-string v10, "/progmaticProfiles/"

    invoke-virtual {v9, v10}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->ifParentDirNotExistCreate(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 351
    .local v6, "parentPath":Ljava/lang/String;
    iget-object v8, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$16;->val$filesName:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_34
    :goto_34
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 353
    .local v2, "filename":Ljava/lang/String;
    :try_start_40
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5f

    .line 355
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 356
    :cond_5f
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 357
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 358
    .local v4, "objectOutputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 359
    .local v7, "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    if-eqz v7, :cond_34

    .line 361
    invoke-virtual {v4, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_7b} :catch_7c

    goto :goto_34

    .line 363
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .end local v7    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :catch_7c
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

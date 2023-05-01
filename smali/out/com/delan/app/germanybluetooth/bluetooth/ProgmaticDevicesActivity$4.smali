.class Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;
.super Lutils/DialogUtils$DialogCallBack;
.source "ProgmaticDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

.field final synthetic val$profileNames:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->val$profileNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButton(Ljava/lang/Object;)V
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 258
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 259
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->val$profileNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v4, Lcom/delan/app/germanybluetooth/bleBluetooth/GermanyUuids;->profileUuids:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$1002(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;I)I

    .line 260
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$1100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->val$profileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->saveProfile(Ljava/util/ArrayList;)V

    .line 261
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    .line 262
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/ProfileBean;
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->indexStr:Ljava/lang/String;

    goto :goto_29

    .line 264
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/ProfileBean;
    :cond_39
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->val$profileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    .line 266
    .restart local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/ProfileBean;
    iget-object v4, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->simpleName:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 267
    invoke-static {}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$1200()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->val$profileNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->indexStr:Ljava/lang/String;

    goto :goto_3f

    .line 270
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/ProfileBean;
    .end local v1    # "name":Ljava/lang/String;
    :cond_78
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->notifyDataSetChanged()V

    .line 271
    return-void
.end method
